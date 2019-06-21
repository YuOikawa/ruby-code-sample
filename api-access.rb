require 'uri'
require 'net/http'

# 特にアカウント権限とか必要ない場合
def get_data_with_api(url, query_params={})
  uri = URI.parse(build_url(url, query_params))

  https = Net::HTTP.new(uri.host, uri.port)
  https.use_ssl = true
  response = https.start {
    https.get(uri.request_uri)
  }
  return response.body
end

def build_url(url, query_params)
  if query_params.empty?
    return url
  else
    return url + "?" + URI.encode_www_form(query_params)
  end
end


