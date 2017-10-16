def freqchar(str1,str2)
  array =("A".."Z").to_a
  hash1 = {}
  hash2 = {}
  str1 = str1.split(" ").join.split("")
  str2 = str2.split(" ").join.split("")
  str2 = str2.sort
  str1 = str1.sort
  p str1
  str1.each do |char|
    case char
      when /[[:upper:]]/ 
      when /[[:lower:]]/ 
        str1.count(char)
        hash1[char]=str1.count(char).to_i
        
       str1 =  str1.join.squeeze(char).split("")
    end
  end
 str2.each do |char|
    case char
      when /[[:upper:]]/ 
      when /[[:lower:]]/ 
        str2.count(char)
        
        hash2[char]=str2.count(char).to_i
        str2 = str2.join.squeeze(char).split("")
    end
  end
  print hash1.sort
  puts "\n"
  print hash2.sort
  puts "\n"
  
  hash1.each do |key1, val1|
    hash2.each do |key2, val2|
       if(key1 == key2)
          if(val1 > val2)
             print "1:"
              print "#{key1*val1}"
          elsif val1 < val2
            print "2:"
              print "#{key2*val2}"
          else
            print "=:"
              print "#{key2*val2}"
          end
         end
    end
  end
end
puts "Enter Number 1"
str1 = gets
puts "Enter Number 2"
str2 = gets
freqchar(str1,str2)
