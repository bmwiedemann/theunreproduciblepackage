#include <stdio.h>

static __inline__ unsigned long long rdtsc(void)
{
    unsigned hi, lo;
    __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi) :: "rcx");
    return ( (unsigned long long)lo)|( ((unsigned long long)hi)<<32 );
}

int main(int argc, char **argv)
{
  int i;
  unsigned long long start, end;
  if(argc>1)
    sscanf(argv[1], "%u", &i);
  else
    i=100000000;
  start = rdtsc();
  for(; i>0; --i) { }
  end = rdtsc();
  printf("took: %llu\n", end-start);
  return 0;
}
