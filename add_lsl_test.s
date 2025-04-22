/* add_lsl_test.s - modified for debugging */
.global _start

_start:
    mov r0, #1         @ Base value
    
    /* Test n=1 to 8 */
    add r1, r0, r0, lsl #1 @ n=1
    add r2, r0, r0, lsl #2 @ n=2
    add r3, r0, r0, lsl #3 @ n=3
    add r4, r0, r0, lsl #4 @ n=4
    add r5, r0, r0, lsl #5 @ n=5
    add r6, r0, r0, lsl #6 @ n=6
    add r7, r0, r0, lsl #7 @ n=7
    add r8, r0, r0, lsl #8 @ n=8
    
    /* Infinite loop for debugging */
    b .
    
    /* Original exit code (now unreachable) */
    mov r7, #1
    swi 0
