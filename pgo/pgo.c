#include <unistd.h>

int main()
{
  char ret=0;
  char c;
  while(read(0, &c, 1) == 1) {
    if(c < 'm') ret++; // count the letters below "m"
  }
  return ret;
}
