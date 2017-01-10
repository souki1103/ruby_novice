#require 'grep'

=begin
def my_hello
  print "Hello.\n"
end
=end

# 第1章

def helloruby
# bundle exec rspec --tag type:helloruby spec/ruby_novice_spec.rbでテスト 
  print("Hello, Ruby.\n")
end

def puts_and_p
  puts "Hello,\n\tRuby."
  p "Hello,\n\tRuby."
end

def kiritsubo
  print "いづれの御時にか女御更衣あまたさぶらいたまいけるなかに\n"
  print "いとやむごとなき際にはあらぬがすぐれて時めきたまふありけり\n"
end

def area_volume
  x = 10
  y = 20
  z = 30
  area = (x*y + y*z + z*x) * 2
  volume = x * y * z
  print "表面積=", area, "\n"
  print "体積=", volume, "\n"
end

def comment_sample
=begin
  「たのしいRuby 第５版」サンプル
   コメントの使い方の例
 　2006/06/16 作成
　 2006/07/01 一部コメントを追加
   2015/10/01 第５版用に更新
=end

  x = 10 # 縦
  y = 20 # 縦
  z = 30 # 高さ
  # 表面積と体積を計算する
  area = (x*y + y*z + z*x) * 2
  volume = x * y * z
  # 出力する
  print "表面積=", area, "\n"
  print "体積=", volume, "\n"
end

def greater_smaller
  a = 20
  if a >= 10 then
    print "greater\n"
  end
  if a <= 9 then
    print "smaller\n"
  end
end

def greater_smaller_else
  a = 20
  if a >= 10
    print "greater\n"
  else
    print "smaller\n"
  end
end

# 第3章

def print_argv
  puts "最初の引数: #{ARGV[0]}"
  puts "２番目の引数: #{ARGV[1]}"
  puts "３番目の引数: #{ARGV[2]}"
  puts "４番目の引数: #{ARGV[3]}"
  puts "５番目の引数: #{ARGV[4]}"
end

def happy_birth
  name = ARGV[0]
  print "Happy Birthday, ", name, "!\n"
end

def arg_arith
  num0 = ARGV[0].to_i
  num1 = ARGV[1].to_i
  puts "#{num0} + #{num1} = #{num0 + num1}"
  puts "#{num0} - #{num1} = #{num0 - num1}"
  puts "#{num0} * #{num1} = #{num0 * num1}"
  puts "#{num0} / #{num1} = #{num0 / num1}"
end

def read_text
  filename = ARGV[0]
  file = File.open(filename) # ①
  text = file.read           # ②
  print text                 # ③
  file.close                 # ④
end

def read_text_simple
  filename = ARGV[0]
  text = File.read(filename)
  print text
end

def read_text_oneline
  print File.read(ARGV[0])
end

def read_line
  filename = ARGV[0]
  file = File.open(filename)
  file.each_line do |line|
    print line
  end
  file.close
end

def simple_grep
  pattern = Regexp.new(ARGV[0])
  filename = ARGV[1]

  file = File.open(filename)
  file.each_line do |line|
    if pattern =~ line
      print line
    end
  end
file.close
end

def hello_ruby2
  def hello
    puts "Hello, Ruby."
  end

  hello()
end

def use_grep
  require_relative "grep"         # grep.rbの読み込み(「.rb」は不要)

  pattern = Regexp.new(ARGV[0])
  filename = ARGV[1] 
  simple_grep(pattern, filename)  # simple_grepメソッドの起動
end

def scopetest
  $x = 0
  x = 0

  require_relative "sub"

  p $x   #=> 1
  p x    #=> 0
end

def ad2heisei
  # 西暦から平成に変換する

  ad = ARGV[0].to_i
  heisei = ad - 1988
  puts heisei
end

def if_elsif
  a = 10
  b = 20
  if a > b
    puts "aはbよりも大きい"
  elsif a < b
    puts "aはbよりも小さい"
  else
    puts "aはbと同じ"
  end
end

def unless1
  a = 10
  b = 20
  unless a > b
    puts "aはbより大きくない"
  end
end

def case1
  tags = [ "A", "IMG", "PRE" ]
  tags.each do |tagname|
    case tagname
    when "P", "A", "I", "B", "BLOCKQUOTE"
      puts "#{tagname} has child."
    when "IMG", "BR"
      puts "#{tagname} has no child."
    else
      puts "#{tagname} cannot be used."
    end
  end
end

def case_class
  array = [ "a", 1, nil ]
  array.each do |item|
    case item
    when String
      puts "item is a String."
    when Numeric
      puts "item is a Numeric."
    else
      puts "item is something."
    end
  end
end

def times
  7.times do
    puts "いちめんのなのはな"
  end
end

def times2
  5.times do |i|
    puts "#{i}回目の繰り返しです。"
  end
end

def times3
  5.times do |i|
    puts "#{i+1}回目の繰り返しです。"
  end
end

def for1
  sum = 0
  for i in 1..5
    sum = sum + i
  end
  puts sum
end

def for_names
  names = ["awk", "Perl", "Python", "Ruby"]
  for name in names
    puts name
  end
end

def while1
  i = 1
  while i < 3
    puts i
    i += 1
  end
end

def while2
  sum = 0
  i = 1
  while i <= 5
    sum += i
    i += 1
  end
  puts sum
end

def while3
  sum = 0
  i = 1
  while sum < 50
    sum += i
    i += 1
  end
  puts sum
end

def until1
  sum = 0
  i = 1
  until sum >= 50
    sum += i
    i+= 1
  end
  puts sum
end

def while_not
  sum = 0
  i = 1
  while !(sum >= 50)
    sum += i
    i += 1
  end
  puts sum
end

def each_names
  names = ["awk","Perl","Python","Ruby"]
  names.each do |name|
    puts name
  end
end

def each
  sum = 0
  (1..5).each do |i|
    sum= sum + i
  end
  puts sum
end

def break_next
  puts "breakの例:"
  i = 0
  ["Perl", "Python", "Ruby", "Scheme"].each do |lang|
    i += 1
    if i == 3
      break
    end
    p [i, lang]
  end

  puts "nextの例:"
  i = 0
  ["Perl", "Python", "Ruby", "Scheme"].each do |lang|
    i += 1
    if i == 3
      next
    end
    p [i, lang]
  end
end

def times_with_param
  5.times do |i|
    puts "#{i}回目の繰り返しです。"
  end
end

def hello_with_name
  def hello(name)
    puts "Hello, #{name}."
  end

  hello("Ruby")
end

def hello_with_default
  def hello(name="Ruby")
    puts "Hello, #{name}."
  end

  hello()         # 引数を省略して呼び出す
  hello("Newbie") # 引数を指定して呼び出す
end

def myloop1
  def myloop
    while true
      yield
    end
  end

  num = 1
  myloop do
    puts "num is #{num}"
    break if num > 10
    num *= 2
  end
end
