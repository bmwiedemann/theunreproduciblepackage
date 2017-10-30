// observed in packages fontforge, groff, judy, lirc, mawk, pcp, xmgrace
#include <stdio.h>
#include <time.h>

main()
{
  const time_t now = time(NULL);
  printf("BUILD_DATE=\"%s\"\n", ctime(&now));
  return 0;
}
