#include<stdio.h>
#include<stdlib.h>

int main(void){
	int size = 0;
	printf("Size: ");
	scanf("%d", &size);
	char *word = (char *)malloc(size*sizeof(char));
	printf("String: ");
	scanf("%s", word);
	int i = size - 1;
	while(i >= 0){
		printf("%c",word[i]);
		i--;
	}
	printf("\n");
	return 0;
}
