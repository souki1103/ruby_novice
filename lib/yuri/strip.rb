file = File.open(ARGV[0])
file.each_line do |line|
  next if /^\*$/ =~ line
  next if /^#/ =~ line
  puts line
end
file.close
