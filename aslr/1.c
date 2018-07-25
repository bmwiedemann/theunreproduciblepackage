#include <unistd.h>

typedef struct {
  char data1;
  short data2;
  // struct has a short (2-byte) value at offset 1, making it unaligned
  // causing compilers to do padding
  // but padding bytes are uninitialized and get random values from ASLR
} unalignedstruct;

int main()
{
  unalignedstruct x;
  x.data1=1;
  x.data2=0x203;
  write(1, &x, sizeof(x));
  return 0;
}
