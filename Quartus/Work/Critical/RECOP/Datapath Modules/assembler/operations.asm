prime:
    lsip r4
    ldr  r1 r4
    lsip r4
    ldr  r2 r4

median_loop:
    lsip    r4
    ldr     r3 r4
    subv    r4 r1 r2
    present r4 no_swap01
        add  r4 r1 #0
        add  r1 r2 #0
        add  r2 r4 #0
no_swap01:
    subv    r4 r2 r3
    present r4 no_swap12
        add  r4 r2 #0
        add  r2 r3 #0
        add  r3 r4 #0
no_swap12:
    subv    r4 r1 r2
    present r4 no_swap01b
        add  r4 r1 #0
        add  r1 r2 #0
        add  r2 r4 #0
no_swap01b:
    ssop  r4
    ssvop r2
    seot
    add   r1 r2 #0
    add   r2 r3 #0
    jmp   median_loop
