// Swapnil Puri

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

# define NUMBER 5

int main(int argc, char* argv[]) {

  printf("Hello World!\n");
  printf("Emoji\n");
  printf("%d) option %s", 1, "one");

  int num = 8;

  int* point = &num;
  *point = 46;

  printf("\n%d", num);
  printf("\n%d", *point);
  printf("\n%p", point);

  int numb = 8;

  double* doublePoint = (double*) malloc(sizeof(double));
  *doublePoint = 10.245;

  printf("\n%lf", *doublePoint);

  int* int_array = calloc(4, sizeof(int));
  *(int_array + 3) = 56;

  return 0;
}