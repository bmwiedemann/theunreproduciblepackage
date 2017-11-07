#include <stdio.h>

main()
{
  int buffer[20];
  int sum;
  int i;
  for(i=0; i<20; i++) {
    sum+=buffer[i];
  }
  printf("%i\n", sum);
  return 0;
}
