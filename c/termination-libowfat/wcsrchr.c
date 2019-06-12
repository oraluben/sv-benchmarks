#include <stddef.h>
#include <stdlib.h>
#include <alloca.h>

#define __unlikely(x) (x)
#define __likely(x) (x)
/* for libTooling compatible
#define wchar_t int */

extern int __VERIFIER_nondet_int(void);

int* wcsrchr(const int *wcs, int wc) {
  int* last=0;
  for (; *wcs; ++wcs)
    if (*wcs == wc)
      last=(int*)wcs;
  return last;
}


int main(){
  int in_len = __VERIFIER_nondet_int();
  if(in_len < 1){return 1;}
  int* hay = alloca(in_len*sizeof(int));
  hay[in_len-1]=0;
  int needle = __VERIFIER_nondet_int();
  return (int) wcsrchr(hay, needle);
}
