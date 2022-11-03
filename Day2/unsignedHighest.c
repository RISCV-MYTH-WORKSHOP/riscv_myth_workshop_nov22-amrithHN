#include<stdio.h>
#include<math.h>

int main(){
	
	long long int min = (long long int)(pow(2, 64) / 2)*-1;
	long long int max = (long long int)(pow(2, 64) / 2)-1;
	printf("highest number represented by lld int is %lld %lld \n",min,max);
	return 0;
}
