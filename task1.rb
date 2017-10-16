def nolaps(x, y)
    a, b = x, y
    remain = a % b
    while remain > 0 do
        a, b = b, remain
        remain = a % b
    end
    gcd = b
    lcm = x * y / gcd
  
    p lcm / x
    p lcm / y
end
nolaps(7 , 4)