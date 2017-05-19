#include <math.h>
#include <stdio.h>

int main()
{
  int n = 100000;
  long double sum = 0;
  for (int i = 1; i <= n; i++)
    for (int j = 1; j <= n; j++)
      sum += sqrt((long double)i * (long double)j)/((long double)i * (long double)j);
  printf("%Lf\n", sum);

  return 0;
}

