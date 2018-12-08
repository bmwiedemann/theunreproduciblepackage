#include <unistd.h>

int main()
{
  char ret=0;
  char c;
  while(read(0, &c, 1) == 1) {
    if(c < '4') ret++; // count the chars below "4"
  }
  return ret;
}
