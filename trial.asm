
.main:
/*	.print r0
	mov r1,0
	mov r2,28[r1]
	ld r2,0[r2]
	mov r3,0

	.print r2
	.print r1 
*/
	cmp r0,r2
	beq .loop

.loop:
	.print r3 