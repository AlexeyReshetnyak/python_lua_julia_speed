#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include <stdio.h>

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

int *calculate_primes(int n)
{
  int *primes = (int *)malloc(n * sizeof(int));
  assert(primes != NULL);

  int p = 1;
  for (int i = 0; i < n; i++) {
    while (!is_prime(p))
      p++;
    primes[i] = p;
    p++;
  }

  return primes;
}

int main()
{
  int n = 1000000;

  int *p = calculate_primes(n);

  if (p != NULL)
    free(p);

  return 0;
}

