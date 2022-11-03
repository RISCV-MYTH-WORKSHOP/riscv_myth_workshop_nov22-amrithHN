.section .text
.global load
.type load, @function

load:	li a3,0x0
	add a4,a0,zero # Iintialise sum register a4 with 0 register addressing mode
	add a2,a0,a1   # store count of 10 in a2 , al= 0xa from main	     add a3,a0,zero //init a3 to 0
loop:	add a4,a3,a4   # a4= a3+a4
	addi a3,a3,1   # immediate addr mode add 1 count=count+1
	blt a3,a2,loop # blt = branch if less than a4<a2
	add a0,a4,zero
	ret
