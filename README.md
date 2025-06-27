# Assembly Lab: Arithmetic Instructions

## Objective

Perform arithmetic instructions in Assembly using NASM on Linux (x86).

## Equations & Files

1. **Equation**: `result = -var1 * 10`  
   - File: `eq1.asm`  
   - Output: `eq1.run.png`

2. **Equation**: `result = var1 + var2 + var3 + var4`  
   - File: `eq2.asm`  
   - Output: `eq2.run.png`

3. **Equation**: `result = (-var1 * var2) + var3`  
   - File: `eq3.asm`  
   - Output: `eq3.run.png`

4. **Equation**: `result = (var1 * 2) / (var2 - 3)`  
   - File: `eq4.asm`  
   - Output: `eq4.run.png`

## Flowchart

Created using google diagrams. See attached file CISC - 211 #6-2.pdf 

## Challenges
One of the significant challenges was translating mathematical equations into low-level instructions while achieving accurate results. Unlike high-level programming languages, Assembly demands a strong grasp of:
  - processor operations
  - memory concepts
  - register usage
Debugging posed another difficulty, as logical errors required careful, step-by-step analysis using GDB. Extra caution was needed to ensure each instruction did the intended operation — especially when handling:
  - negative values
  - multiplication
  - data types and sign extension

## Debugging

Used `gdb` with the following commands:
layout asm
layout regs
watch (int) result
break _start
run
stepi 

## Submission

All required `.asm` files, output screenshots, and this `README.md` have been included.  
Flowchart is attached as `CISC - 211 #6-2.pdf`.

## Conclusion

This lab reinforced my understanding of how low-level arithmetic operations are executed by the processor. It was a hands-on experience that highlighted the importance of precision, stepwise debugging, and a solid grasp of how assembly instructions interact with hardware.

Thank you for reviewing my work!
