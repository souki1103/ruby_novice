print("Helo, Ruby.\n")
print("Hello, \"RUBY\"\n")
puts "Hello, Ruby."
p "100"
p 100
print("あいうえお\n")

puts(20 + 8/2)
puts Math.sin(3.1415)

=begin
表面積と体積を
求める
=end
x=10 #横
y=20 #縦
z=30 #高さ
area=(x*y+y*z+z*x)*2
volume=x*y*z
print "表面積=", area, "\n"
print "体積=", volume, "\n"
puts "表面積=#{area}"

p(2==2)
p(1==2)

a=20
if a>=10 then
   print "greater\n"
end
if a<=9 
   print "smaller\n"
end

10.times do
	 print "Hello!\n"
end