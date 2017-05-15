#include <cmath>
#include <vector>
#include <iostream>

int is_prime(int n)
{
  if (n < 4)
    return 1;
  if (!(n % 2))
    return 0;
  for (int a = 3; a < (int)(sqrt(n)) + 1; a++)
    if (!(n % a))
      return 0;
  return 1;
}

std::vector<int> calculate_primes(int n)
{
  std::vector<int> primes;
  int p = 1;
  for (int i = 0; i < n; i++) {
    while (!is_prime(p))
      p++;
    primes.push_back(p);
    p++;
  }

  return primes;
}

int main()
{
  calculate_primes(1000000);

  return 0;
}

