#include<stdio.h>

int main(){
	int sum=0,n=9,i=1;
	for(i=1;i<=n;++i)
		sum+=i;
	printf("Sum of 1 to %d is %d",n,sum);
	return 0;
}
