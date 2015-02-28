
.main:
	mov r1,0  	@i=0
	mov r8,0	@sum=0
	mul r10,r0,r0
	mul r10,r10,8
	b .loop1

.loop1:
	mov r2,0	@j=0
	b .loop2

.loop2:
	mov r3,0	@k=0
	b .loop3

.loop3:
	
@	.print r1

	mul r4,r0,r1	@i*n
	add r4,r4,r3	@location of a[i][k]=i*n+k
	mul r4,r4,4
@	.print r4

	mul r6,r0,r0	@r6=n^2 will be loaded later anyway so no problems
	mul r5,r2,r0 	@j*n
	add r5,r5,r3	@j*n+k
@	.print r5
	add r5,r5,r6
	mul r5,r5,4

	ld r6,0[r4]		@load values in registers
@	.print r6
	ld r7,0[r5]		
@	.print r7

	mul r7,r7,r6
	add r8,r8,r7
	add r3,r3,1

	ld r6,4[r4]		@load values in registers
@	.print r6
	ld r7,4[r5]		
@	.print r7

	mul r7,r7,r6
	add r8,r8,r7
	add r3,r3,1

	ld r6,8[r4]		@load values in registers
@	.print r6
	ld r7,8[r5]		
@	.print r7

	mul r7,r7,r6
	add r8,r8,r7
	add r9,r9,r8

	add r3,r3,1


	ld r6,12[r4]		@load values in registers

	ld r7,12[r5]		
@	.print r6
@	.print r7

	mul r7,r7,r6
	add r8,r8,r7
	add r3,r3,1



	cmp r3,r0
	beq .break1
	b .loop3

.break1:
@	.print r2
	add r10,r10,r4
	st r9,0[r10]
	mov r9,0
	mul r10,r0,r0
	mul r10,r10,8
	add r2,r2,1
	cmp r2,r0
	beq .break2
	b .loop2

.break2:
@	.print r1
	add r1,r1,1
	cmp r1,r0
	beq .addSum
	b .loop1
.addSum:
	.print r8

