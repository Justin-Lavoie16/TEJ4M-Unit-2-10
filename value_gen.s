/* value_gen.s - debug ready version */
.global _start

_start:
    mov r0, #1         @ Base value
    
    /* Example combinations */
    rsb r1, r0, r0, lsl #3 @ r1 = 7*r0 (7)
    add r1, r1, r1, lsl #1 @ r1 = 3*r1 (21)
    add r1, r1, r1     @ r1 = 2*r1 (42)
    
    /* Other combinations */
    rsb r2, r0, r0, lsl #3 @ r2 = 7
    add r2, r2, r2, lsl #2 @ r2 = 35
    
    rsb r3, r0, r0, lsl #6 @ r3 = 63
    
    rsb r4, r0, r0, lsl #4 @ r4 = 15
    
    mov r5, #1
    rsb r5, r5, r5, lsl #5 @ r5 = 31
    sub r5, r5, r5, lsr #2 @ r5 = 24

    /* Debug loop */
debug_loop:
    b debug_loop
    
    /* Original exit code */
    mov r7, #1
    swi 0
