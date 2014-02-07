#include <stdio.h>

int input[] = { 5, 4, 1, 8, 7, 2, 6, 3 };
int output[8];

int main(void)
{
  for(int i=0;i<8;++i) output[i]=input[i];

  /* Print sorted array */
  printf("Sorted: ");
  for(int i=0;i<8;++i) {
    printf("%d ", output[i]);
  }
  printf("\n");

  return 0;
}
