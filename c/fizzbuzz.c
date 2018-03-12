#include<stdio.h>
#include<stdlib.h>

int main(void){
	for(int i = 0; i < 100; i++){
		if(i % 3 == 0){
			printf("fizz");
		}
		if(i % 5 == 0){
			printf("buzz");
		}
		if((i % 3 != 0) && (i % 5 != 0)){
			printf("%d",i);
		}
		printf("\n");
	}
	return 0;
}
