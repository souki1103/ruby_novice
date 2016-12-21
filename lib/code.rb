
=begin
def my_hello
# bundle exec rspec spec/ruby_novice_spec.rb:18でテストできます．
  print "Hello.\n"
end
=end

def my_helloruby
# bundle exec rspec spec/ruby_novice_spec.rb:25でテストできます. 
  print("Hello, Ruby.\n")
end

def my_puts_and_p
# bundle exec rspec spec/ruby_novice_spec.rb:32でテストできます.
  puts "Hello,\n\tRuby."
  p "Hello,\n\tRuby."
end

def my_kiritsubo
# bundle exec rspec spec/ruby_novice_spec.rb:40でテストできます. 
  print "いづれの御時にか女御更衣あまたさぶらいたまいけるなかに\n"
  print "いとやむごとなき際にはあらぬがすぐれて時めきたまふありけり\n"
end

def my_area_volume
# bundle exec rspec spec/ruby_novice_spec.rb:48でテストできます. 
  x = 10
  y = 20
  z = 30
  area = (x*y + y*z + z*x) * 2
  volume = x * y * z
  print "表面積=", area, "\n"
  print "体積=", volume, "\n"
end

def my_comment_sample
# bundle exec rspec spec/ruby_novice_spec.rb:56でテストできます. 
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

def my_greater_smaller
# bundle exec rspec spec/ruby_novice_spec.rb:64でテストできます. 
  a = 20
  if a >= 10 then
    print "greater\n"
  end
  if a <= 9 then
    print "smaller\n"
  end
end

def my_greater_smaller_else
# bundle exec rspec spec/ruby_novice_spec.rb:72でテストできます. 
  a = 20
  if a >= 10
    print "greater\n"
  else
    print "smaller\n"
  end
end

def my_print_argv(argv)
  puts "最初の引数: #{argv[0]}"
  puts "２番目の引数: #{argv[1]}"
  puts "３番目の引数: #{argv[2]}"
  puts "４番目の引数: #{argv[3]}"
  puts "５番目の引数: #{argv[4]}"
end

def my_happy_birth(argv)
  name = argv[0]
  print "Happy Birthday, ", name, "!\n"
end

def my_arg_arith(argv)
  num0 = argv[0].to_i
  num1 = argv[1].to_i
  puts "#{num0} + #{num1} = #{num0 + num1}"
  puts "#{num0} - #{num1} = #{num0 - num1}"
  puts "#{num0} * #{num1} = #{num0 * num1}"
  puts "#{num0} / #{num1} = #{num0 / num1}"
end

def my_read_text(argv)
  filename = argv[0]
  file = File.open(filename) # ①
  text = file.read           # ②
  print text                 # ③
  file.close                 # ④
end

def my_read_text_simple(argv)
  filename = argv[0]
  text = File.read(filename)
  print text
end

def my_read_text_oneline(argv)
  print File.read(argv[0])
end

def my_read_line(argv)
  filename = argv[0]
  file = File.open(filename)
  file.each_line do |line|
    print line
  end
  file.close
end

def my_simple_grep(argv)
  pattern = Regexp.new(argv[0])
  filename = argv[1]

  file = File.open(filename)
  file.each_line do |line|
    if pattern =~ line
      print line
    end
  end
file.close
end

def my_hello_ruby2
  def hello
    puts "Hello, Ruby."
  end

  hello()
end

