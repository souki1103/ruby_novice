names = ["小林", 22, "内海", 26,  "亀井", 9]
p names.size

names.each do |n|
	   puts n
end

address = {name: "高橋", kana: "タカハシ"}
address.each do |key, value|
	     puts "#{key}; #{value}"
end

p /Ruby/ =~ "ruby"
p /Ruby/ =~ "Ruby"
p /Ruby/i =~ "ruby"