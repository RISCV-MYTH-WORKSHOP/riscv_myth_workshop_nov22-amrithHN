# Documentation  RISC V core based on TL verilog 
## Table of Contents
- day 1 and 2 lab
- day 3 - 5 lab
- About RISCV
- Learnings and Observation
- Key Concepts
- Conclusion
- Acknowledgement

## LAB  reports

|         |            |
| ------------- |:-------------:| 
| Day 1 & 2     | [Lab report](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_nov22-amrithHN/tree/master/Day2)          |
| Day 3 to 5     |  [Lab report](https://github.com/RISCV-MYTH-WORKSHOP/riscv_myth_workshop_nov22-amrithHN/tree/master/Day3_5)      |



## About RISC V 
RISC-V is an open standard Instruction Set Architecture (ISA) enabling a new era of processor innovation through open collaboration
  website: [RSIC-V website][https://riscv.org/]
![image](https://riscv.org/wp-content/uploads/2020/06/riscv-color.svg)

## Learnings and Observation

1. Tools: 
- [Makerchip](www.makerchip.com)
- [Spike simulator](https://github.com/riscv-software-src/riscv-isa-sim)
- [RISCV GCC TOOLCHAIN](https://github.com/riscv-collab/riscv-gnu-toolchain)
  
2. Installation:
- [Install script](https://github.com/kunalg123/riscv_workshop_collaterals/blob/master/run.sh)
Installs Spike simulator and GCC toolchain required to  compile RISCV source code in C

3. Usage:

- Compile command:

```$ riscv64-unkown-elf-gcc -O<1/fast> -mabi=lp<XLEN> -march=rv<XLEN>i -o <output_program> <input_user_file> [<input_user_file>...]```

- Assembly preview command:

```$ riscv64-unkown-elf-objdump -d <output_program>```

- Run command:

```$ spike pk <output_program>```

- Debug command:

```$ spike -d pk <output_program> ```
  
## Key Concepts
-- RISC V concepts like ISA ABI etc
-- TL Verilog concepts
-- Pipelining
-- Validity
-- Hierarchy and Arrays
-- Micro architecture of CPU 
-- Pipelining implementation

## Conclusion
Implemented a RISC V core Using TL verilog in 5 days as a part of the Workshop learning key concepts . However the core is bare minimum the workshop helps to understand the underlying concepts clearly.

## Acknowledgement
- [Kunal Ghosh, Co-founder](https://github.com/kunalg123), VSD Corp. Pvt. Ltd.
- [Steve Hoover](https://github.com/stevehoover), Founder, Redwood EDA
