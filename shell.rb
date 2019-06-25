# lsコマンドの実行
system('ls')

# Shellクラス
## https://docs.ruby-lang.org/ja/latest/class/Shell.html
require 'shell'
sh = Shell.new
print sh.system("ls", "-l")
sh.system("ls", "-l") > STDOUT
