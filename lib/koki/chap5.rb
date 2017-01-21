# 第5章

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
