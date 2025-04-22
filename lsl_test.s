/* lsl_test.s */
.global _start

_start:
    mov r0, #5         @ Initialize r0 with value 5
    
    /* First form: lsl instruction */
    lsl r1, r0, #1     @ r1 = r0 << 1
    
    /* Second form: mov with shift */
    mov r2, r0, lsl #1 @ r2 = r0 << 1
    
    /* Exit */
    mov r7, #1
    swi 0
