
# abcと数字が連続して与えられたとき すでに個数が決まっている場合
a,b = gets.split.map(&:to_i)

# 上記を配列に格納する
s = gets.split("").map(&:to_i)

# 文字列を取得
s = gets.chop

# こっちでもいい
s = gets.chomp("")

# 数字を取得
s = gets.chomp("").to_i

s = gets.chomp("").to_i

# 最初に数字を取得した後複数の値をとる場合
a = []
b = []
s.times do |i|
  a[i],b[i] = gets.split
end
