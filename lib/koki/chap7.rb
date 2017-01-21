# 第7章

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
