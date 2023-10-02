.text
.global main

@define constants, these can be used as symbols in your code
.equ LED_CTL, 0x41210000
.set SW_DATA, 0x41220000
.set LD4_BASE, 0x43C00000

@the set and equ directives are equivalent and can be used interchangeably

main:
	ldr r1,=SW_DATA	@load switch address from constant
	ldr r3,= LD4_BASE

	MOV R0, #0x01
	STR R0, [R3, #0x00]	// enable R of LD4
	STR R0, [R3, #0x10]	// enable G of LD4
	STR R0, [R3, #0x20]	// enable B of LD4

	MOV R0, #0xFF  // 255
	STR R0, [R3, #0x04]  // Period of R of LD4 = 255
	STR R0, [R3, #0x14]  // Period of G of LD4 = 255
	STR R0, [R3, #0x24]  // Period of B of LD4 = 255

loop:


    ldr r4,[r1]	@load switch value *r1 ->r0
	and r4, r4, #0x0f // only 4 switches

	and r2, r4, #0x08 // only switch 3
	mov r2, r2, lsr #3 // right most

    // switch3 and switch2
	and r5, r4, #0x04 // only switch 2
	mov r5, r5, lsr #2  // right most
	and r5, r5, r2
	mov r7, r5, lsl #1
	orr r7, r7, r5
	mov r8, r7, lsl #2
	orr r8, r7, r8
	mov r8, r8, lsl #4
	orr r8, r8, r7
	STR R8, [R3, #0x08]  // Width of B of LD4 = 0 (always off)

  	// switch3 and switch1
  	and r8, r4, #0x02 //only switch 1
  	mov r8, r8, lsr #1 // right most
	and r8, r8, r2
	mov r10, r8, lsl #1
	orr r10, r10, r8
	mov r11, r10, lsl #2
	orr r11, r11, r10
	mov r11, r11, lsl #4
	orr r11, r11, r10
	STR R11, [R3, #0x18]  // Width of G of LD4 = 0 (always off)

	// switch3 and switch0
	and r0, r4, #0x01 //only switch 0
	and r0, r0, r2
	mov r12, r0, lsl #1
	orr r12, r12, r0
	mov r14, r12, lsl #2
	orr r14, r14, r12
	mov r14, r14, lsl #4
	orr r14, r14, r12
	STR R14, [R3, #0x28]  // Width of R of LD4 = 255 (always on)

b loop		@go back to "loop"

.end

