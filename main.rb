def prime_factors(num)
  arr_prime = []
	
  (1..num).each do |ele|
    if num % ele == 0 && prime?(ele)
      arr_prime << ele
    end
  end
  return arr_prime
end

def prime?(n)
  if n < 2
    return false
  end

  (2...n).each do |i|
    if n % i == 0
      return false
    end
  end

  return true
end

print prime_factors(24) #=> [2, 3]
puts
print prime_factors(60) #=> [2, 3, 5]
puts