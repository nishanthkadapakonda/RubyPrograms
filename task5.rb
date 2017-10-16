 def romancal n
    h = {
        1000=>"M",
        500=>"D",
        100=>"C",
        50=>"L",
        10=>"X",
        5=>"V",
        1=>"I",
    }
    roman = ""
    h.each do |key, value|
      roman << value*(n / key)
      n = n % key
    end
    return roman
  end
puts "Enter any number"
n =gets.to_i
romancal(n)
