function is_prime(n)
  if n < 4 then
    return true
  end
  if n % 2 == 0 then
    return false
  end
  for a = 3, math.ceil(math.sqrt(n)) + 1 do
    if n % a == 0 then
      return false
    end
  end
  return true
end

function calculate_primes(n)
  primes = {}
  p = 1
  for i = 0, n do
    while is_prime(p) ~= true do
      p = p + 1
    end
    table.insert(primes, p)
    p = p + 1
  end

  return primes
end

calculate_primes(1000000)
