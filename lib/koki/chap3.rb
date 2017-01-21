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
