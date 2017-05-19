function test_sqrt()
  n = 100000
  sum = 0.0
  for i = 1, n do
    for j = 1, n do
      sum = sum + math.sqrt(i * j)/(i * j)
    end
  end
  print(sum)
end

test_sqrt()

