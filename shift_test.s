/* shift_test.s - fixed version */
.global _start

_start:
    mov r0, #0xFFFFFFFF @ Set all bits to 1
    
    /* Test shift values at the limit */
    mov r1, r0, lsl #31  @ Maximum left shift (31)
    mov r2, r0, lsr #31  @ Maximum right shift (31)
    mov r3, r0, asr #31  @ Maximum arithmetic shift (31)
    mov r4, r0, ror #31  @ Maximum rotation (31)
    
    /* Test with register-specified shift */
    mov r5, #31          @ Maximum valid shift value
    mov r6, r0, lsl r5   @ Shift left by register value
    
    /* Also show what happens with modulo behavior */
    mov r7, #33          @ Value that would be too large as immediate
    mov r8, r0, lsl r7   @ But valid as register shift (33 mod 32 = 1)
    
    /* Exit */
    mov r7, #1
    swi 0
