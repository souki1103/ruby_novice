def fetch_and_downcase(ary,index)
   if str = ary[index]
      return str.downcase
   else 
      return "not found"
   end
end

ary = ["Boo","Foo","Woo"]
p fetch_and_downcase(ary,0)
p fetch_and_downcase(ary,1)
p fetch_and_downcase(ary,2)
p fetch_and_downcase(ary,3)