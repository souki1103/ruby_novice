puts "数を比べるプログラム"

a = ARGV[0].to_i
b = ARGV[1].to_i

print a,"と",b,"では"

if a>b
  print a,"の方が大きい\n"
elsif a<b
  print b,"の方が大きい\n"
else
  print "同じ大きさである\n"
end
