puts "最初の引数: #{ARGV[0]}"
puts "２番目の引数: #{ARGV[1]}"
puts "３番目の引数: #{ARGV[2]}"

name = ARGV[3]
print "Happy Birthday, ", name, "!\n"

num0 = ARGV[4].to_i
num1 = ARGV[5].to_i
puts "#{num0} + #{num1} = #{num0+num1}"
puts "#{num0} - #{num1} = #{num0-num1}"