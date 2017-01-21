# 第6章

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
