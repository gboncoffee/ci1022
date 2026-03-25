	xor r0, r0
	xor r1, r1
	xor r2, r2
	xor r3, r3

	addi 5
	addi 5

	add r1, r0

	xor r0, r0
	addi 7
	ldui 1

	add r2, r0

	xor r0, r0
	addi 3

	add r3, r0
	xor r0, r0
	addi 1
for:
	st r1, r2

	add r1, r0
	add r2, r0

	loop for

	xor r0, r0
	addi 1
;; ji 0
	ecall
