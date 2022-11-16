## LAB SUBMISSION

### DAY 1 AND 2
```cpp
#include<stdio.h>

int main(){
	int sum=0,n=9,i=1;
	for(i=1;i<=n;++i)
		sum+=i;
	printf("Sum of 1 to %d is %d",n,sum);
	return 0;
}

```
#### Compilation and simulation result using Riscv-gcc compiler and spike simulator
- **day1**
after `riscv64-unknown-elf-objdump -d Sum1tonrv64.o | less`
![objdump result](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_nov22-amrithHN/blob/master/Day2/day1_lab_sum1ton.png)
 - **day 2**
 ```cpp
 #include<stdio.h>
#include<math.h>

int main(){
	
	long long int min = (long long int)(pow(2, 64) / 2)*-1;
	long long int max = (long long int)(pow(2, 64) / 2)-1;
	printf("highest number represented by lld int is %lld %lld \n",min,max);
	return 0;
}
 ```
 
```cpp
#include<stdio.h>

extern int load(int x,int y);

int main(){
	int result=0;
	int count=9;
	result=load(0x0,count+1);
	printf("Sum of number from 1to %d is %d\n",count,result);
	return 0;
}
```
![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_nov22-amrithHN/blob/master/Day2/gcc_lab2_.png)
![](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_nov22-amrithHN/blob/master/Day2/objdump_day2.png)

**Concepts Learnt**
- RISCV Assembly mnemonics and ISA
- Using RISCV V compiler and simulator
