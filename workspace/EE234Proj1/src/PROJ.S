.text
.global main

@ Define constants, these can be used as symbols in your code
.equ LED_CTL, 0x41210000
.equ SW_DATA, 0x41220000

@ The set and equ directives are equivalent and can be used interchangeably

main:
    ldr r1, =SW_DATA  @ Load switch address from constant
    ldr r2, =LED_CTL  @ Load LED address from constant

loop:

    ldr r0, [r1]
    eor r3, r0, #0x0f
    str r3, [r2]     @ Store the toggled value back to the LED register at *r2
    b loop           @ Go back to the "loop"

.end
