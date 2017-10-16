def pass_encrypt(plaintext , n)
   arr = ('A'..'Z').to_a
   cyph_text =""
   encp_text = plaintext.tr('A-Z' ,(arr[n..25]<<arr[0...n]).flatten.join).tr('0-9' , ('0'..'9').to_a.reverse.join)
    encp_text.each_char.with_index{|c, i|
     if i.even?
       cyph_text<<c.upcase 
    else 
     cyph_text<<c.downcase
    end 
   }
    encp_text.reverse
 end
 
 puts pass_encrypt("IMAGINE 123#DRAGONS" , 3)