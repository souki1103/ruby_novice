names = ["山田","菊岡","田中","岡"]
names.each do |name|
  if /岡/ =~ name
    puts name
  end
end
