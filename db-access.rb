require "mysql2"

# mysql2 sql文
def execute_sql(db_info, sql, sql_params={})
  client = Mysql2::Client.new(
    :host     => db_info["url"],
    :username => db_info["username"],
    :password => db_info["password"],
    :database => db_info["database"]
  )

  stmt    = client.prepare(sql)
  result  = stmt.execute(*sql_params)

  client.close
  return result
end


