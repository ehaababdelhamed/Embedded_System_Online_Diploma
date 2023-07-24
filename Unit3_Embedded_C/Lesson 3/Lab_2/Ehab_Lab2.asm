
Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	0800007d 	stmdaeq	r0, {r0, r2, r3, r4, r5, r6}

08000008 <main>:
 8000008:	b480      	push	{r7}
 800000a:	b083      	sub	sp, #12
 800000c:	af00      	add	r7, sp, #0
 800000e:	4b18      	ldr	r3, [pc, #96]	; (8000070 <main+0x68>)
 8000010:	681b      	ldr	r3, [r3, #0]
 8000012:	4a17      	ldr	r2, [pc, #92]	; (8000070 <main+0x68>)
 8000014:	f043 0304 	orr.w	r3, r3, #4
 8000018:	6013      	str	r3, [r2, #0]
 800001a:	4b16      	ldr	r3, [pc, #88]	; (8000074 <main+0x6c>)
 800001c:	681b      	ldr	r3, [r3, #0]
 800001e:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 8000022:	4a14      	ldr	r2, [pc, #80]	; (8000074 <main+0x6c>)
 8000024:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000028:	6013      	str	r3, [r2, #0]
 800002a:	4b13      	ldr	r3, [pc, #76]	; (8000078 <main+0x70>)
 800002c:	681a      	ldr	r2, [r3, #0]
 800002e:	8813      	ldrh	r3, [r2, #0]
 8000030:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8000034:	8013      	strh	r3, [r2, #0]
 8000036:	2300      	movs	r3, #0
 8000038:	607b      	str	r3, [r7, #4]
 800003a:	e002      	b.n	8000042 <main+0x3a>
 800003c:	687b      	ldr	r3, [r7, #4]
 800003e:	3301      	adds	r3, #1
 8000040:	607b      	str	r3, [r7, #4]
 8000042:	687b      	ldr	r3, [r7, #4]
 8000044:	f241 3287 	movw	r2, #4999	; 0x1387
 8000048:	4293      	cmp	r3, r2
 800004a:	d9f7      	bls.n	800003c <main+0x34>
 800004c:	4b0a      	ldr	r3, [pc, #40]	; (8000078 <main+0x70>)
 800004e:	681a      	ldr	r2, [r3, #0]
 8000050:	8813      	ldrh	r3, [r2, #0]
 8000052:	f36f 334d 	bfc	r3, #13, #1
 8000056:	8013      	strh	r3, [r2, #0]
 8000058:	2300      	movs	r3, #0
 800005a:	607b      	str	r3, [r7, #4]
 800005c:	e002      	b.n	8000064 <main+0x5c>
 800005e:	687b      	ldr	r3, [r7, #4]
 8000060:	3301      	adds	r3, #1
 8000062:	607b      	str	r3, [r7, #4]
 8000064:	687b      	ldr	r3, [r7, #4]
 8000066:	f241 3287 	movw	r2, #4999	; 0x1387
 800006a:	4293      	cmp	r3, r2
 800006c:	d9f7      	bls.n	800005e <main+0x56>
 800006e:	e7dc      	b.n	800002a <main+0x22>
 8000070:	40021018 	andmi	r1, r2, r8, lsl r0
 8000074:	40010804 	andmi	r0, r1, r4, lsl #16
 8000078:	20000000 	andcs	r0, r0, r0

0800007c <reset>:
 800007c:	b580      	push	{r7, lr}
 800007e:	af00      	add	r7, sp, #0
 8000080:	f7ff ffc2 	bl	8000008 <main>
 8000084:	bf00      	nop
 8000086:	bd80      	pop	{r7, pc}

Disassembly of section .bss:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00000800 	andeq	r0, r0, r0, lsl #16
  1c:	00007c08 	andeq	r7, r0, r8, lsl #24
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00000800 	andeq	r0, r0, r0, lsl #16
  f8:	00007c08 	andeq	r7, r0, r8, lsl #24
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	b2000074 	andlt	r0, r0, #116	; 0x74
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000148 	andeq	r0, r0, r8, asr #2
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	0800007c 	stmdaeq	r0, {r2, r3, r4, r5, r6}
 138:	08000088 	stmdaeq	r0, {r3, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00533302 	subseq	r3, r3, r2, lsl #6
 16c:	04020000 	streq	r0, [r2], #-0
 170:	00002d07 	andeq	r2, r0, r7, lsl #26
 174:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 178:	00000000 	andeq	r0, r0, r0
 17c:	28070802 	stmdacs	r7, {r1, fp}
 180:	02000000 	andeq	r0, r0, #0
 184:	011b0404 	tsteq	fp, r4, lsl #8
 188:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 18c:	00005f04 	andeq	r5, r0, r4, lsl #30
 190:	00480400 	subeq	r0, r8, r0, lsl #8
 194:	00860000 	addeq	r0, r6, r0
 198:	86050000 	strhi	r0, [r5], -r0
 19c:	01000000 	mrseq	r0, (UNDEF: 0)
 1a0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1a4:	00000032 	andeq	r0, r0, r2, lsr r0
 1a8:	00013a06 	andeq	r3, r1, r6, lsl #20
 1ac:	76250100 	strtvc	r0, [r5], -r0, lsl #2
 1b0:	01000000 	mrseq	r0, (UNDEF: 0)
 1b4:	00000305 	andeq	r0, r0, r5, lsl #6
 1b8:	01070800 	tsteq	r7, r0, lsl #16
 1bc:	00000142 	andeq	r0, r0, r2, asr #2
 1c0:	7c012101 	stfvcs	f2, [r1], {1}
 1c4:	88080000 	stmdahi	r8, {}	; <UNPREDICTABLE>
 1c8:	38080000 	stmdacc	r8, {}	; <UNPREDICTABLE>
 1cc:	01000000 	mrseq	r0, (UNDEF: 0)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	01040000 	mrseq	r0, (UNDEF: 4)
  ec:	01134901 	tsteq	r3, r1, lsl #18
  f0:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  f4:	13490021 	movtne	r0, #36897	; 0x9021
  f8:	00000b2f 	andeq	r0, r0, pc, lsr #22
  fc:	03003406 	movweq	r3, #1030	; 0x406
 100:	3b0b3a0e 	blcc	2ce940 <vectors-0x7d316c0>
 104:	3f13490b 	svccc	0x0013490b
 108:	000a020c 	andeq	r0, sl, ip, lsl #4
 10c:	002e0700 	eoreq	r0, lr, r0, lsl #14
 110:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 114:	0b3b0b3a 	bleq	ec2e04 <vectors-0x713d1fc>
 118:	01110c27 	tsteq	r1, r7, lsr #24
 11c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 120:	000c4296 	muleq	ip, r6, r2
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  3c:	00000002 	andeq	r0, r0, r2
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000002 	andeq	r0, r0, r2
  48:	00000004 	andeq	r0, r0, r4
  4c:	087d0002 	ldmdaeq	sp!, {r1}^
  50:	00000004 	andeq	r0, r0, r4
  54:	0000000c 	andeq	r0, r0, ip
  58:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000008 	stmdaeq	r0, {r3}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	0800007c 	stmdaeq	r0, {r2, r3, r4, r5, r6}
  34:	0000000c 	andeq	r0, r0, ip
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00080205 	andeq	r0, r8, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00004d01 	andeq	r4, r0, r1, lsl #26
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	0800007c 	stmdaeq	r0, {r2, r3, r4, r5, r6}
  b0:	2f012003 	svccs	0x00012003
  b4:	0002022f 	andeq	r0, r2, pc, lsr #4
  b8:	Address 0x00000000000000b8 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65720073 	ldrbvs	r0, [r2, #-115]!	; 0xffffff8d
 144:	00746573 	rsbseq	r6, r4, r3, ror r5
 148:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 14c:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
 150:	Address 0x0000000000000150 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000008 	stmdaeq	r0, {r3}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000018 	andeq	r0, r0, r8, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	0800007c 	stmdaeq	r0, {r2, r3, r4, r5, r6}
  48:	0000000c 	andeq	r0, r0, ip
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0000070d 	andeq	r0, r0, sp, lsl #14

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	0800009b 	stmdaeq	r0, {r0, r1, r3, r4, r7}
 8000008:	08000095 	stmdaeq	r0, {r0, r2, r4, r7}
 800000c:	08000095 	stmdaeq	r0, {r0, r2, r4, r7}
 8000010:	08000095 	stmdaeq	r0, {r0, r2, r4, r7}
 8000014:	08000095 	stmdaeq	r0, {r0, r2, r4, r7}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	08000095 	stmdaeq	r0, {r0, r2, r4, r7}

08000020 <main>:
 8000020:	b480      	push	{r7}
 8000022:	b083      	sub	sp, #12
 8000024:	af00      	add	r7, sp, #0
 8000026:	4b18      	ldr	r3, [pc, #96]	; (8000088 <main+0x68>)
 8000028:	681b      	ldr	r3, [r3, #0]
 800002a:	4a17      	ldr	r2, [pc, #92]	; (8000088 <main+0x68>)
 800002c:	f043 0304 	orr.w	r3, r3, #4
 8000030:	6013      	str	r3, [r2, #0]
 8000032:	4b16      	ldr	r3, [pc, #88]	; (800008c <main+0x6c>)
 8000034:	681b      	ldr	r3, [r3, #0]
 8000036:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800003a:	4a14      	ldr	r2, [pc, #80]	; (800008c <main+0x6c>)
 800003c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000040:	6013      	str	r3, [r2, #0]
 8000042:	4b13      	ldr	r3, [pc, #76]	; (8000090 <main+0x70>)
 8000044:	681a      	ldr	r2, [r3, #0]
 8000046:	8813      	ldrh	r3, [r2, #0]
 8000048:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800004c:	8013      	strh	r3, [r2, #0]
 800004e:	2300      	movs	r3, #0
 8000050:	607b      	str	r3, [r7, #4]
 8000052:	e002      	b.n	800005a <main+0x3a>
 8000054:	687b      	ldr	r3, [r7, #4]
 8000056:	3301      	adds	r3, #1
 8000058:	607b      	str	r3, [r7, #4]
 800005a:	687b      	ldr	r3, [r7, #4]
 800005c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000060:	4293      	cmp	r3, r2
 8000062:	d9f7      	bls.n	8000054 <main+0x34>
 8000064:	4b0a      	ldr	r3, [pc, #40]	; (8000090 <main+0x70>)
 8000066:	681a      	ldr	r2, [r3, #0]
 8000068:	8813      	ldrh	r3, [r2, #0]
 800006a:	f36f 334d 	bfc	r3, #13, #1
 800006e:	8013      	strh	r3, [r2, #0]
 8000070:	2300      	movs	r3, #0
 8000072:	607b      	str	r3, [r7, #4]
 8000074:	e002      	b.n	800007c <main+0x5c>
 8000076:	687b      	ldr	r3, [r7, #4]
 8000078:	3301      	adds	r3, #1
 800007a:	607b      	str	r3, [r7, #4]
 800007c:	687b      	ldr	r3, [r7, #4]
 800007e:	f241 3287 	movw	r2, #4999	; 0x1387
 8000082:	4293      	cmp	r3, r2
 8000084:	d9f7      	bls.n	8000076 <main+0x56>
 8000086:	e7dc      	b.n	8000042 <main+0x22>
 8000088:	40021018 	andmi	r1, r2, r8, lsl r0
 800008c:	40010804 	andmi	r0, r1, r4, lsl #16
 8000090:	20000000 	andcs	r0, r0, r0

08000094 <Defualt_handler>:
 8000094:	b480      	push	{r7}
 8000096:	af00      	add	r7, sp, #0
 8000098:	e7fe      	b.n	8000098 <Defualt_handler+0x4>

0800009a <_reset>:
 800009a:	b580      	push	{r7, lr}
 800009c:	af00      	add	r7, sp, #0
 800009e:	f7ff ffbf 	bl	8000020 <main>
 80000a2:	bf00      	nop
 80000a4:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00002000 	andeq	r2, r0, r0
  1c:	00009408 	andeq	r9, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00002000 	andeq	r2, r0, r0
  f8:	00009408 	andeq	r9, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	c8000074 	stmdagt	r0, {r2, r4, r5, r6}
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000159 	andeq	r0, r0, r9, asr r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	08000094 	stmdaeq	r0, {r2, r4, r7}
 138:	080000a6 	stmdaeq	r0, {r1, r2, r5, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00533302 	subseq	r3, r3, r2, lsl #6
 16c:	04020000 	streq	r0, [r2], #-0
 170:	00002d07 	andeq	r2, r0, r7, lsl #26
 174:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 178:	00000000 	andeq	r0, r0, r0
 17c:	28070802 	stmdacs	r7, {r1, fp}
 180:	02000000 	andeq	r0, r0, #0
 184:	011b0404 	tsteq	fp, r4, lsl #8
 188:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 18c:	00005f04 	andeq	r5, r0, r4, lsl #30
 190:	00480400 	subeq	r0, r8, r0, lsl #8
 194:	00860000 	addeq	r0, r6, r0
 198:	86050000 	strhi	r0, [r5], -r0
 19c:	07000000 	streq	r0, [r0, -r0]
 1a0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1a4:	00000032 	andeq	r0, r0, r2, lsr r0
 1a8:	00013a06 	andeq	r3, r1, r6, lsl #20
 1ac:	762a0100 	strtvc	r0, [sl], -r0, lsl #2
 1b0:	01000000 	mrseq	r0, (UNDEF: 0)
 1b4:	00000305 	andeq	r0, r0, r5, lsl #6
 1b8:	01070800 	tsteq	r7, r0, lsl #16
 1bc:	00000152 	andeq	r0, r0, r2, asr r1
 1c0:	9a012501 	bls	495cc <vectors-0x7fb6a34>
 1c4:	a6080000 	strge	r0, [r8], -r0
 1c8:	38080000 	stmdacc	r8, {}	; <UNPREDICTABLE>
 1cc:	01000000 	mrseq	r0, (UNDEF: 0)
 1d0:	01420108 	cmpeq	r2, r8, lsl #2
 1d4:	0c010000 	stceq	0, cr0, [r1], {-0}
 1d8:	00009401 	andeq	r9, r0, r1, lsl #8
 1dc:	00009a08 	andeq	r9, r0, r8, lsl #20
 1e0:	00006408 	andeq	r6, r0, r8, lsl #8
 1e4:	Address 0x00000000000001e4 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	01040000 	mrseq	r0, (UNDEF: 4)
  ec:	01134901 	tsteq	r3, r1, lsl #18
  f0:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  f4:	13490021 	movtne	r0, #36897	; 0x9021
  f8:	00000b2f 	andeq	r0, r0, pc, lsr #22
  fc:	03003406 	movweq	r3, #1030	; 0x406
 100:	3b0b3a0e 	blcc	2ce940 <vectors-0x7d316c0>
 104:	3f13490b 	svccc	0x0013490b
 108:	000a020c 	andeq	r0, sl, ip, lsl #4
 10c:	002e0700 	eoreq	r0, lr, r0, lsl #14
 110:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 114:	0b3b0b3a 	bleq	ec2e04 <vectors-0x713d1fc>
 118:	01110c27 	tsteq	r1, r7, lsr #24
 11c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 120:	000c4296 	muleq	ip, r6, r2
 124:	002e0800 	eoreq	r0, lr, r0, lsl #16
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000006 	andeq	r0, r0, r6
  3c:	00000008 	andeq	r0, r0, r8
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000008 	andeq	r0, r0, r8
  48:	0000000a 	andeq	r0, r0, sl
  4c:	087d0002 	ldmdaeq	sp!, {r1}^
  50:	0000000a 	andeq	r0, r0, sl
  54:	00000012 	andeq	r0, r0, r2, lsl r0
  58:	08770002 	ldmdaeq	r7!, {r1}^
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	047d0002 	ldrbteq	r0, [sp], #-2
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	04770002 	ldrbteq	r0, [r7], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000020 	stmdaeq	r0, {r5}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	08000094 	stmdaeq	r0, {r2, r4, r7}
  34:	00000012 	andeq	r0, r0, r2, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00200205 	eoreq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00005501 	andeq	r5, r0, r1, lsl #10
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	08000094 	stmdaeq	r0, {r2, r4, r7}
  b0:	00010b03 	andeq	r0, r1, r3, lsl #22
  b4:	2f010402 	svccs	0x00010402
  b8:	2f201803 	svccs	0x00201803
  bc:	0002022f 	andeq	r0, r2, pc, lsr #4
  c0:	Address 0x00000000000000c0 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 144:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 148:	61685f74 	smcvs	34292	; 0x85f4
 14c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 150:	725f0072 	subsvc	r0, pc, #114	; 0x72
 154:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 158:	61747300 	cmnvs	r4, r0, lsl #6
 15c:	70757472 	rsbsvc	r7, r5, r2, ror r4
 160:	Address 0x0000000000000160 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000020 	stmdaeq	r0, {r5}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	08000094 	stmdaeq	r0, {r2, r4, r7}
  48:	00000006 	andeq	r0, r0, r6
  4c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  50:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  54:	00000018 	andeq	r0, r0, r8, lsl r0
  58:	0000002c 	andeq	r0, r0, ip, lsr #32
  5c:	0800009a 	stmdaeq	r0, {r1, r3, r4, r7}
  60:	0000000c 	andeq	r0, r0, ip
  64:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  68:	41018e02 	tstmi	r1, r2, lsl #28
  6c:	0000070d 	andeq	r0, r0, sp, lsl #14

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000cb 	stmdaeq	r0, {r0, r1, r3, r6, r7}
 8000008:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 800000c:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000010:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000014:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000020:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 800002c:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000030:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000034:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000038:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 800003c:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000040:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000044:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000048:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 800004c:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <Defualt_handler>:
 80000c4:	b480      	push	{r7}
 80000c6:	af00      	add	r7, sp, #0
 80000c8:	e7fe      	b.n	80000c8 <Defualt_handler+0x4>

080000ca <_reset>:
 80000ca:	b580      	push	{r7, lr}
 80000cc:	af00      	add	r7, sp, #0
 80000ce:	f7ff ffbf 	bl	8000050 <main>
 80000d2:	bf00      	nop
 80000d4:	bd80      	pop	{r7, pc}

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	c8000074 	stmdagt	r0, {r2, r4, r5, r6}
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000159 	andeq	r0, r0, r9, asr r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	080000d6 	stmdaeq	r0, {r1, r2, r4, r6, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00533302 	subseq	r3, r3, r2, lsl #6
 16c:	04020000 	streq	r0, [r2], #-0
 170:	00002d07 	andeq	r2, r0, r7, lsl #26
 174:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
 178:	00000000 	andeq	r0, r0, r0
 17c:	28070802 	stmdacs	r7, {r1, fp}
 180:	02000000 	andeq	r0, r0, #0
 184:	011b0404 	tsteq	fp, r4, lsl #8
 188:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 18c:	00005f04 	andeq	r5, r0, r4, lsl #30
 190:	00480400 	subeq	r0, r8, r0, lsl #8
 194:	00860000 	addeq	r0, r6, r0
 198:	86050000 	strhi	r0, [r5], -r0
 19c:	13000000 	movwne	r0, #0
 1a0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1a4:	00000032 	andeq	r0, r0, r2, lsr r0
 1a8:	00013a06 	andeq	r3, r1, r6, lsl #20
 1ac:	762a0100 	strtvc	r0, [sl], -r0, lsl #2
 1b0:	01000000 	mrseq	r0, (UNDEF: 0)
 1b4:	00000305 	andeq	r0, r0, r5, lsl #6
 1b8:	01070800 	tsteq	r7, r0, lsl #16
 1bc:	00000152 	andeq	r0, r0, r2, asr r1
 1c0:	ca012501 	bgt	495cc <vectors-0x7fb6a34>
 1c4:	d6080000 	strle	r0, [r8], -r0
 1c8:	38080000 	stmdacc	r8, {}	; <UNPREDICTABLE>
 1cc:	01000000 	mrseq	r0, (UNDEF: 0)
 1d0:	01420108 	cmpeq	r2, r8, lsl #2
 1d4:	0c010000 	stceq	0, cr0, [r1], {-0}
 1d8:	0000c401 	andeq	ip, r0, r1, lsl #8
 1dc:	0000ca08 	andeq	ip, r0, r8, lsl #20
 1e0:	00006408 	andeq	r6, r0, r8, lsl #8
 1e4:	Address 0x00000000000001e4 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	01040000 	mrseq	r0, (UNDEF: 4)
  ec:	01134901 	tsteq	r3, r1, lsl #18
  f0:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
  f4:	13490021 	movtne	r0, #36897	; 0x9021
  f8:	00000b2f 	andeq	r0, r0, pc, lsr #22
  fc:	03003406 	movweq	r3, #1030	; 0x406
 100:	3b0b3a0e 	blcc	2ce940 <vectors-0x7d316c0>
 104:	3f13490b 	svccc	0x0013490b
 108:	000a020c 	andeq	r0, sl, ip, lsl #4
 10c:	002e0700 	eoreq	r0, lr, r0, lsl #14
 110:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 114:	0b3b0b3a 	bleq	ec2e04 <vectors-0x713d1fc>
 118:	01110c27 	tsteq	r1, r7, lsr #24
 11c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 120:	000c4296 	muleq	ip, r6, r2
 124:	002e0800 	eoreq	r0, lr, r0, lsl #16
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000006 	andeq	r0, r0, r6
  3c:	00000008 	andeq	r0, r0, r8
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000008 	andeq	r0, r0, r8
  48:	0000000a 	andeq	r0, r0, sl
  4c:	087d0002 	ldmdaeq	sp!, {r1}^
  50:	0000000a 	andeq	r0, r0, sl
  54:	00000012 	andeq	r0, r0, r2, lsl r0
  58:	08770002 	ldmdaeq	r7!, {r1}^
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	047d0002 	ldrbteq	r0, [sp], #-2
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	04770002 	ldrbteq	r0, [r7], #-2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000012 	andeq	r0, r0, r2, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00005501 	andeq	r5, r0, r1, lsl #10
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	00010b03 	andeq	r0, r1, r3, lsl #22
  b4:	2f010402 	svccs	0x00010402
  b8:	2f201803 	svccs	0x00201803
  bc:	0002022f 	andeq	r0, r2, pc, lsr #4
  c0:	Address 0x00000000000000c0 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 144:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 148:	61685f74 	smcvs	34292	; 0x85f4
 14c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 150:	725f0072 	subsvc	r0, pc, #114	; 0x72
 154:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 158:	61747300 	cmnvs	r4, r0, lsl #6
 15c:	70757472 	rsbsvc	r7, r5, r2, ror r4
 160:	Address 0x0000000000000160 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000006 	andeq	r0, r0, r6
  4c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  50:	070d4101 	streq	r4, [sp, -r1, lsl #2]
  54:	00000018 	andeq	r0, r0, r8, lsl r0
  58:	0000002c 	andeq	r0, r0, ip, lsr #32
  5c:	080000ca 	stmdaeq	r0, {r1, r3, r6, r7}
  60:	0000000c 	andeq	r0, r0, ip
  64:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  68:	41018e02 	tstmi	r1, r2, lsl #28
  6c:	0000070d 	andeq	r0, r0, sp, lsl #14

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800000c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000010:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000014:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000020:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800002c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000030:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000034:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000038:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800003c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000040:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000044:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000048:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800004c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	af00      	add	r7, sp, #0
 80000c8:	b672      	cpsid	i
 80000ca:	f7ff ffc1 	bl	8000050 <main>
 80000ce:	bf00      	nop
 80000d0:	bd80      	pop	{r7, pc}

080000d2 <Defualt_handler>:
 80000d2:	b480      	push	{r7}
 80000d4:	af00      	add	r7, sp, #0
 80000d6:	e7fe      	b.n	80000d6 <Defualt_handler+0x4>

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	d2000074 	andle	r0, r0, #116	; 0x74
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000159 	andeq	r0, r0, r9, asr r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	080000d8 	stmdaeq	r0, {r3, r4, r6, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00583302 	subseq	r3, r8, r2, lsl #6
 16c:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	53050000 	movwpl	r0, #20480	; 0x5000
 198:	8b000000 	blhi	1a0 <vectors-0x7fffe60>
 19c:	06000000 	streq	r0, [r0], -r0
 1a0:	00000090 	muleq	r0, r0, r0
 1a4:	7b040013 	blvc	1001f8 <vectors-0x7effe08>
 1a8:	02000000 	andeq	r0, r0, #0
 1ac:	00320704 	eorseq	r0, r2, r4, lsl #14
 1b0:	3a070000 	bcc	1c01b8 <vectors-0x7e3fe48>
 1b4:	01000001 	tsteq	r0, r1
 1b8:	00008b32 	andeq	r8, r0, r2, lsr fp
 1bc:	03050100 	movweq	r0, #20736	; 0x5100
 1c0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 1c4:	01420108 	cmpeq	r2, r8, lsl #2
 1c8:	2d010000 	stccs	0, cr0, [r1, #-0]
 1cc:	0000d201 	andeq	sp, r0, r1, lsl #4
 1d0:	0000d808 	andeq	sp, r0, r8, lsl #16
 1d4:	00003808 	andeq	r3, r0, r8, lsl #16
 1d8:	01090100 	mrseq	r0, (UNDEF: 25)
 1dc:	00000152 	andeq	r0, r0, r2, asr r1
 1e0:	c4012801 	strgt	r2, [r1], #-2049	; 0xfffff7ff
 1e4:	d2080000 	andle	r0, r8, #0
 1e8:	64080000 	strvs	r0, [r8], #-0
 1ec:	01000000 	mrseq	r0, (UNDEF: 0)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	01010500 	tsteq	r1, r0, lsl #10
  f4:	13011349 	movwne	r1, #4937	; 0x1349
  f8:	21060000 	mrscs	r0, (UNDEF: 6)
  fc:	2f134900 	svccs	0x00134900
 100:	0700000b 	streq	r0, [r0, -fp]
 104:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 108:	0b3b0b3a 	bleq	ec2df8 <vectors-0x713d208>
 10c:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; fffffff0 <_STACK_TOP+0xdfffefec>
 110:	00000a02 	andeq	r0, r0, r2, lsl #20
 114:	3f002e08 	svccc	0x00002e08
 118:	3a0e030c 	bcc	380d50 <vectors-0x7c7f2b0>
 11c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 120:	1201110c 	andne	r1, r1, #12, 2
 124:	97064001 	strls	r4, [r6, -r1]
 128:	00000c42 	andeq	r0, r0, r2, asr #24
 12c:	3f002e09 	svccc	0x00002e09
 130:	3a0e030c 	bcc	380d68 <vectors-0x7c7f298>
 134:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 138:	1201110c 	andne	r1, r1, #12, 2
 13c:	96064001 	strls	r4, [r6], -r1
 140:	00000c42 	andeq	r0, r0, r2, asr #24
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000000e 	andeq	r0, r0, lr
  3c:	00000010 	andeq	r0, r0, r0, lsl r0
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000010 	andeq	r0, r0, r0, lsl r0
  48:	00000012 	andeq	r0, r0, r2, lsl r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000012 	andeq	r0, r0, r2, lsl r0
  54:	00000014 	andeq	r0, r0, r4, lsl r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	0000000e 	andeq	r0, r0, lr
  84:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000014 	andeq	r0, r0, r4, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00005401 	andeq	r5, r0, r1, lsl #8
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	2f012703 	svccs	0x00012703
  b4:	00302f21 	eorseq	r2, r0, r1, lsr #30
  b8:	2f010402 	svccs	0x00010402
  bc:	01000102 	tsteq	r0, r2, lsl #2
  c0:	Address 0x00000000000000c0 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 144:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 148:	61685f74 	smcvs	34292	; 0x85f4
 14c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 150:	725f0072 	subsvc	r0, pc, #114	; 0x72
 154:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 158:	61747300 	cmnvs	r4, r0, lsl #6
 15c:	70757472 	rsbsvc	r7, r5, r2, ror r4
 160:	Address 0x0000000000000160 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000018 	andeq	r0, r0, r8, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000000e 	andeq	r0, r0, lr
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0000070d 	andeq	r0, r0, sp, lsl #14
  58:	00000014 	andeq	r0, r0, r4, lsl r0
  5c:	0000002c 	andeq	r0, r0, ip, lsr #32
  60:	080000d2 	stmdaeq	r0, {r1, r4, r6, r7}
  64:	00000006 	andeq	r0, r0, r6
  68:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  6c:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800000c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000010:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000014:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000020:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800002c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000030:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000034:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000038:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800003c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000040:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000044:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000048:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800004c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	af00      	add	r7, sp, #0
 80000c8:	b672      	cpsid	i
 80000ca:	f7ff ffc1 	bl	8000050 <main>
 80000ce:	bf00      	nop
 80000d0:	bd80      	pop	{r7, pc}

080000d2 <Defualt_handler>:
 80000d2:	b480      	push	{r7}
 80000d4:	af00      	add	r7, sp, #0
 80000d6:	e7fe      	b.n	80000d6 <Defualt_handler+0x4>

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	d2000074 	andle	r0, r0, #116	; 0x74
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000159 	andeq	r0, r0, r9, asr r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	080000d8 	stmdaeq	r0, {r3, r4, r6, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00583302 	subseq	r3, r8, r2, lsl #6
 16c:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	53050000 	movwpl	r0, #20480	; 0x5000
 198:	8b000000 	blhi	1a0 <vectors-0x7fffe60>
 19c:	06000000 	streq	r0, [r0], -r0
 1a0:	00000090 	muleq	r0, r0, r0
 1a4:	7b040013 	blvc	1001f8 <vectors-0x7effe08>
 1a8:	02000000 	andeq	r0, r0, #0
 1ac:	00320704 	eorseq	r0, r2, r4, lsl #14
 1b0:	3a070000 	bcc	1c01b8 <vectors-0x7e3fe48>
 1b4:	01000001 	tsteq	r0, r1
 1b8:	00008b32 	andeq	r8, r0, r2, lsr fp
 1bc:	03050100 	movweq	r0, #20736	; 0x5100
 1c0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 1c4:	01420108 	cmpeq	r2, r8, lsl #2
 1c8:	2d010000 	stccs	0, cr0, [r1, #-0]
 1cc:	0000d201 	andeq	sp, r0, r1, lsl #4
 1d0:	0000d808 	andeq	sp, r0, r8, lsl #16
 1d4:	00003808 	andeq	r3, r0, r8, lsl #16
 1d8:	01090100 	mrseq	r0, (UNDEF: 25)
 1dc:	00000152 	andeq	r0, r0, r2, asr r1
 1e0:	c4012801 	strgt	r2, [r1], #-2049	; 0xfffff7ff
 1e4:	d2080000 	andle	r0, r8, #0
 1e8:	64080000 	strvs	r0, [r8], #-0
 1ec:	01000000 	mrseq	r0, (UNDEF: 0)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	01010500 	tsteq	r1, r0, lsl #10
  f4:	13011349 	movwne	r1, #4937	; 0x1349
  f8:	21060000 	mrscs	r0, (UNDEF: 6)
  fc:	2f134900 	svccs	0x00134900
 100:	0700000b 	streq	r0, [r0, -fp]
 104:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 108:	0b3b0b3a 	bleq	ec2df8 <vectors-0x713d208>
 10c:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; fffffff0 <_STACK_TOP+0xdfffefec>
 110:	00000a02 	andeq	r0, r0, r2, lsl #20
 114:	3f002e08 	svccc	0x00002e08
 118:	3a0e030c 	bcc	380d50 <vectors-0x7c7f2b0>
 11c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 120:	1201110c 	andne	r1, r1, #12, 2
 124:	97064001 	strls	r4, [r6, -r1]
 128:	00000c42 	andeq	r0, r0, r2, asr #24
 12c:	3f002e09 	svccc	0x00002e09
 130:	3a0e030c 	bcc	380d68 <vectors-0x7c7f298>
 134:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 138:	1201110c 	andne	r1, r1, #12, 2
 13c:	96064001 	strls	r4, [r6], -r1
 140:	00000c42 	andeq	r0, r0, r2, asr #24
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000000e 	andeq	r0, r0, lr
  3c:	00000010 	andeq	r0, r0, r0, lsl r0
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000010 	andeq	r0, r0, r0, lsl r0
  48:	00000012 	andeq	r0, r0, r2, lsl r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000012 	andeq	r0, r0, r2, lsl r0
  54:	00000014 	andeq	r0, r0, r4, lsl r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	0000000e 	andeq	r0, r0, lr
  84:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000014 	andeq	r0, r0, r4, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00005401 	andeq	r5, r0, r1, lsl #8
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	2f012703 	svccs	0x00012703
  b4:	00302f21 	eorseq	r2, r0, r1, lsr #30
  b8:	2f010402 	svccs	0x00010402
  bc:	01000102 	tsteq	r0, r2, lsl #2
  c0:	Address 0x00000000000000c0 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 144:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 148:	61685f74 	smcvs	34292	; 0x85f4
 14c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 150:	725f0072 	subsvc	r0, pc, #114	; 0x72
 154:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 158:	61747300 	cmnvs	r4, r0, lsl #6
 15c:	70757472 	rsbsvc	r7, r5, r2, ror r4
 160:	Address 0x0000000000000160 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000018 	andeq	r0, r0, r8, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000000e 	andeq	r0, r0, lr
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0000070d 	andeq	r0, r0, sp, lsl #14
  58:	00000014 	andeq	r0, r0, r4, lsl r0
  5c:	0000002c 	andeq	r0, r0, ip, lsr #32
  60:	080000d2 	stmdaeq	r0, {r1, r4, r6, r7}
  64:	00000006 	andeq	r0, r0, r6
  68:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  6c:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800000c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000010:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000014:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000020:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800002c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000030:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000034:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000038:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800003c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000040:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000044:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 8000048:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}
 800004c:	080000d3 	stmdaeq	r0, {r0, r1, r4, r6, r7}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	af00      	add	r7, sp, #0
 80000c8:	b672      	cpsid	i
 80000ca:	f7ff ffc1 	bl	8000050 <main>
 80000ce:	bf00      	nop
 80000d0:	bd80      	pop	{r7, pc}

080000d2 <Defualt_handler>:
 80000d2:	b480      	push	{r7}
 80000d4:	af00      	add	r7, sp, #0
 80000d6:	e7fe      	b.n	80000d6 <Defualt_handler+0x4>

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	d2000074 	andle	r0, r0, #116	; 0x74
 11c:	02000000 	andeq	r0, r0, #0
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	00000159 	andeq	r0, r0, r9, asr r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	080000d8 	stmdaeq	r0, {r3, r4, r6, r7}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00583302 	subseq	r3, r8, r2, lsl #6
 16c:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	53050000 	movwpl	r0, #20480	; 0x5000
 198:	8b000000 	blhi	1a0 <vectors-0x7fffe60>
 19c:	06000000 	streq	r0, [r0], -r0
 1a0:	00000090 	muleq	r0, r0, r0
 1a4:	7b040013 	blvc	1001f8 <vectors-0x7effe08>
 1a8:	02000000 	andeq	r0, r0, #0
 1ac:	00320704 	eorseq	r0, r2, r4, lsl #14
 1b0:	3a070000 	bcc	1c01b8 <vectors-0x7e3fe48>
 1b4:	01000001 	tsteq	r0, r1
 1b8:	00008b32 	andeq	r8, r0, r2, lsr fp
 1bc:	03050100 	movweq	r0, #20736	; 0x5100
 1c0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 1c4:	01420108 	cmpeq	r2, r8, lsl #2
 1c8:	2d010000 	stccs	0, cr0, [r1, #-0]
 1cc:	0000d201 	andeq	sp, r0, r1, lsl #4
 1d0:	0000d808 	andeq	sp, r0, r8, lsl #16
 1d4:	00003808 	andeq	r3, r0, r8, lsl #16
 1d8:	01090100 	mrseq	r0, (UNDEF: 25)
 1dc:	00000152 	andeq	r0, r0, r2, asr r1
 1e0:	c4012801 	strgt	r2, [r1], #-2049	; 0xfffff7ff
 1e4:	d2080000 	andle	r0, r8, #0
 1e8:	64080000 	strvs	r0, [r8], #-0
 1ec:	01000000 	mrseq	r0, (UNDEF: 0)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	01010500 	tsteq	r1, r0, lsl #10
  f4:	13011349 	movwne	r1, #4937	; 0x1349
  f8:	21060000 	mrscs	r0, (UNDEF: 6)
  fc:	2f134900 	svccs	0x00134900
 100:	0700000b 	streq	r0, [r0, -fp]
 104:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 108:	0b3b0b3a 	bleq	ec2df8 <vectors-0x713d208>
 10c:	0c3f1349 	ldceq	3, cr1, [pc], #-292	; fffffff0 <_STACK_TOP+0xdfffefec>
 110:	00000a02 	andeq	r0, r0, r2, lsl #20
 114:	3f002e08 	svccc	0x00002e08
 118:	3a0e030c 	bcc	380d50 <vectors-0x7c7f2b0>
 11c:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 120:	1201110c 	andne	r1, r1, #12, 2
 124:	97064001 	strls	r4, [r6, -r1]
 128:	00000c42 	andeq	r0, r0, r2, asr #24
 12c:	3f002e09 	svccc	0x00002e09
 130:	3a0e030c 	bcc	380d68 <vectors-0x7c7f298>
 134:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
 138:	1201110c 	andne	r1, r1, #12, 2
 13c:	96064001 	strls	r4, [r6], -r1
 140:	00000c42 	andeq	r0, r0, r2, asr #24
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000000e 	andeq	r0, r0, lr
  3c:	00000010 	andeq	r0, r0, r0, lsl r0
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	00000010 	andeq	r0, r0, r0, lsl r0
  48:	00000012 	andeq	r0, r0, r2, lsl r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000012 	andeq	r0, r0, r2, lsl r0
  54:	00000014 	andeq	r0, r0, r4, lsl r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	0000000e 	andeq	r0, r0, lr
  84:	08770002 	ldmdaeq	r7!, {r1}^
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000014 	andeq	r0, r0, r4, lsl r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00005401 	andeq	r5, r0, r1, lsl #8
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	2f012703 	svccs	0x00012703
  b4:	00302f21 	eorseq	r2, r0, r1, lsr #30
  b8:	2f010402 	svccs	0x00010402
  bc:	01000102 	tsteq	r0, r2, lsl #2
  c0:	Address 0x00000000000000c0 is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	65760074 	ldrbvs	r0, [r6, #-116]!	; 0xffffff8c
 13c:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 140:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 144:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 148:	61685f74 	smcvs	34292	; 0x85f4
 14c:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 150:	725f0072 	subsvc	r0, pc, #114	; 0x72
 154:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 158:	61747300 	cmnvs	r4, r0, lsl #6
 15c:	70757472 	rsbsvc	r7, r5, r2, ror r4
 160:	Address 0x0000000000000160 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000018 	andeq	r0, r0, r8, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000000e 	andeq	r0, r0, lr
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0000070d 	andeq	r0, r0, sp, lsl #14
  58:	00000014 	andeq	r0, r0, r4, lsl r0
  5c:	0000002c 	andeq	r0, r0, ip, lsr #32
  60:	080000d2 	stmdaeq	r0, {r1, r4, r6, r7}
  64:	00000006 	andeq	r0, r0, r6
  68:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  6c:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800000c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000010:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000014:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000020:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800002c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000030:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000034:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000038:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800003c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000040:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000044:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000048:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800004c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1a      	ldr	r2, [pc, #104]	; (8000138 <_reset+0x74>)
 80000ce:	4b1b      	ldr	r3, [pc, #108]	; (800013c <_reset+0x78>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	109b      	asrs	r3, r3, #2
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	4b1a      	ldr	r3, [pc, #104]	; (8000140 <_reset+0x7c>)
 80000d8:	617b      	str	r3, [r7, #20]
 80000da:	4b17      	ldr	r3, [pc, #92]	; (8000138 <_reset+0x74>)
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	613b      	str	r3, [r7, #16]
 80000e2:	e00a      	b.n	80000fa <_reset+0x36>
 80000e4:	697b      	ldr	r3, [r7, #20]
 80000e6:	607b      	str	r3, [r7, #4]
 80000e8:	687b      	ldr	r3, [r7, #4]
 80000ea:	3304      	adds	r3, #4
 80000ec:	607b      	str	r3, [r7, #4]
 80000ee:	697b      	ldr	r3, [r7, #20]
 80000f0:	3304      	adds	r3, #4
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	693b      	ldr	r3, [r7, #16]
 80000f6:	3301      	adds	r3, #1
 80000f8:	613b      	str	r3, [r7, #16]
 80000fa:	693b      	ldr	r3, [r7, #16]
 80000fc:	68ba      	ldr	r2, [r7, #8]
 80000fe:	429a      	cmp	r2, r3
 8000100:	d8f0      	bhi.n	80000e4 <_reset+0x20>
 8000102:	4a10      	ldr	r2, [pc, #64]	; (8000144 <_reset+0x80>)
 8000104:	4b10      	ldr	r3, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	1ad3      	subs	r3, r2, r3
 8000108:	109b      	asrs	r3, r3, #2
 800010a:	60bb      	str	r3, [r7, #8]
 800010c:	4b0d      	ldr	r3, [pc, #52]	; (8000144 <_reset+0x80>)
 800010e:	607b      	str	r3, [r7, #4]
 8000110:	2300      	movs	r3, #0
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	e007      	b.n	8000126 <_reset+0x62>
 8000116:	2300      	movs	r3, #0
 8000118:	607b      	str	r3, [r7, #4]
 800011a:	687b      	ldr	r3, [r7, #4]
 800011c:	3304      	adds	r3, #4
 800011e:	607b      	str	r3, [r7, #4]
 8000120:	68fb      	ldr	r3, [r7, #12]
 8000122:	3301      	adds	r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fb      	ldr	r3, [r7, #12]
 8000128:	68ba      	ldr	r2, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d8f3      	bhi.n	8000116 <_reset+0x52>
 800012e:	b662      	cpsie	i
 8000130:	f7ff ff8e 	bl	8000050 <main>
 8000134:	e7fe      	b.n	8000134 <_reset+0x70>
 8000136:	bf00      	nop
 8000138:	20000000 	andcs	r0, r0, r0
 800013c:	20000004 	andcs	r0, r0, r4
 8000140:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 8000144:	20000004 	andcs	r0, r0, r4
 8000148:	20000004 	andcs	r0, r0, r4

0800014c <Defualt_handler>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	e7fe      	b.n	8000150 <Defualt_handler+0x4>
 8000152:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	7f000074 	svcvc	0x00000074
 11c:	02000001 	andeq	r0, r0, #1
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	0000019c 	muleq	r0, ip, r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	08000152 	stmdaeq	r0, {r1, r4, r6, r8}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00583302 	subseq	r3, r8, r2, lsl #6
 16c:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	7b050000 	blvc	14019c <vectors-0x7ebfe64>
 198:	01000001 	tsteq	r0, r1
 19c:	00004812 	andeq	r4, r0, r2, lsl r8
 1a0:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1a4:	0000015e 	andeq	r0, r0, lr, asr r1
 1a8:	00481301 	subeq	r1, r8, r1, lsl #6
 1ac:	01010000 	mrseq	r0, (UNDEF: 1)
 1b0:	0001b105 	andeq	fp, r1, r5, lsl #2
 1b4:	48140100 	ldmdami	r4, {r8}
 1b8:	01000000 	mrseq	r0, (UNDEF: 0)
 1bc:	01a60501 			; <UNDEFINED> instruction: 0x01a60501
 1c0:	15010000 	strne	r0, [r1, #-0]
 1c4:	00000048 	andeq	r0, r0, r8, asr #32
 1c8:	85050101 	strhi	r0, [r5, #-257]	; 0xfffffeff
 1cc:	01000001 	tsteq	r0, r1
 1d0:	00004816 	andeq	r4, r0, r6, lsl r8
 1d4:	06010100 	streq	r0, [r1], -r0, lsl #2
 1d8:	00000053 	andeq	r0, r0, r3, asr r0
 1dc:	000000cc 	andeq	r0, r0, ip, asr #1
 1e0:	0000d107 	andeq	sp, r0, r7, lsl #2
 1e4:	04001300 	streq	r1, [r0], #-768	; 0xfffffd00
 1e8:	000000bc 	strheq	r0, [r0], -ip
 1ec:	32070402 	andcc	r0, r7, #33554432	; 0x2000000
 1f0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 1f4:	00000146 	andeq	r0, r0, r6, asr #2
 1f8:	00cc3001 	sbceq	r3, ip, r1
 1fc:	05010000 	streq	r0, [r1, #-0]
 200:	00000003 	andeq	r0, r0, r3
 204:	4e010908 	vmlami.f16	s0, s2, s16	; <UNPREDICTABLE>
 208:	01000001 	tsteq	r0, r1
 20c:	014c015d 	cmpeq	ip, sp, asr r1
 210:	01520800 	cmpeq	r2, r0, lsl #16
 214:	00380800 	eorseq	r0, r8, r0, lsl #16
 218:	0a010000 	beq	40220 <vectors-0x7fbfde0>
 21c:	00019501 	andeq	r9, r1, r1, lsl #10
 220:	01480100 	mrseq	r0, (UNDEF: 88)
 224:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 228:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
 22c:	00000064 	andeq	r0, r0, r4, rrx
 230:	00017501 	andeq	r7, r1, r1, lsl #10
 234:	018e0b00 	orreq	r0, lr, r0, lsl #22
 238:	4a010000 	bmi	40240 <vectors-0x7fbfdc0>
 23c:	00000048 	andeq	r0, r0, r8, asr #32
 240:	0b689102 	bleq	1a24650 <vectors-0x65db9b0>
 244:	0000013a 	andeq	r0, r0, sl, lsr r1
 248:	01754b01 	cmneq	r5, r1, lsl #22
 24c:	91020000 	mrsls	r0, (UNDEF: 2)
 250:	016a0b74 	smceq	41140	; 0xa0b4
 254:	4c010000 	stcmi	0, cr0, [r1], {-0}
 258:	00000175 	andeq	r0, r0, r5, ror r1
 25c:	0c649102 	stfeqp	f1, [r4], #-8
 260:	080000de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7}
 264:	08000102 	stmdaeq	r0, {r1, r8}
 268:	0000015e 	andeq	r0, r0, lr, asr r1
 26c:	0100690d 	tsteq	r0, sp, lsl #18
 270:	00017b4d 	andeq	r7, r1, sp, asr #22
 274:	70910200 	addsvc	r0, r1, r0, lsl #4
 278:	01100e00 	tsteq	r0, r0, lsl #28
 27c:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
 280:	690d0800 	stmdbvs	sp, {fp}
 284:	7b540100 	blvc	150068c <vectors-0x6aff974>
 288:	02000001 	andeq	r0, r0, #1
 28c:	00006c91 	muleq	r0, r1, ip
 290:	0048040f 	subeq	r0, r8, pc, lsl #8
 294:	04100000 	ldreq	r0, [r0], #-0
 298:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	00340500 	eorseq	r0, r4, r0, lsl #10
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  fc:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 100:	01060000 	mrseq	r0, (UNDEF: 6)
 104:	01134901 	tsteq	r3, r1, lsl #18
 108:	07000013 	smladeq	r0, r3, r0, r0
 10c:	13490021 	movtne	r0, #36897	; 0x9021
 110:	00000b2f 	andeq	r0, r0, pc, lsr #22
 114:	03003408 	movweq	r3, #1032	; 0x408
 118:	3b0b3a0e 	blcc	2ce958 <vectors-0x7d316a8>
 11c:	3f13490b 	svccc	0x0013490b
 120:	000a020c 	andeq	r0, sl, ip, lsl #4
 124:	002e0900 	eoreq	r0, lr, r0, lsl #18
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors-0x713d1cc>
 148:	01110c27 	tsteq	r1, r7, lsr #24
 14c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 150:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 154:	0b000013 	bleq	1a8 <vectors-0x7fffe58>
 158:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 15c:	0b3b0b3a 	bleq	ec2e4c <vectors-0x713d1b4>
 160:	0a021349 	beq	84e8c <vectors-0x7f7b174>
 164:	0b0c0000 	bleq	30016c <vectors-0x7cffe94>
 168:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 16c:	00130101 	andseq	r0, r3, r1, lsl #2
 170:	00340d00 	eorseq	r0, r4, r0, lsl #26
 174:	0b3a0803 	bleq	e82188 <vectors-0x717de78>
 178:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 17c:	00000a02 	andeq	r0, r0, r2, lsl #20
 180:	11010b0e 	tstne	r1, lr, lsl #22
 184:	00011201 	andeq	r1, r1, r1, lsl #4
 188:	000f0f00 	andeq	r0, pc, r0, lsl #30
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	24100000 	ldrcs	r0, [r0], #-0
 194:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 198:	0008030b 	andeq	r0, r8, fp, lsl #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000088 	andeq	r0, r0, r8, lsl #1
  3c:	0000008a 	andeq	r0, r0, sl, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008a 	andeq	r0, r0, sl, lsl #1
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	0000008c 	andeq	r0, r0, ip, lsl #1
  54:	0000008e 	andeq	r0, r0, lr, lsl #1
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000088 	andeq	r0, r0, r8, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c703 	tsteq	r0, r3, lsl #14
  b4:	2f59213d 	svccs	0x0059213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	002f0304 	eoreq	r0, pc, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0xffffff9b
 148:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 14c:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 150:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 154:	61685f74 	smcvs	34292	; 0x85f4
 158:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 15c:	535f0072 	cmppl	pc, #114	; 0x72
 160:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 164:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 168:	505f0041 	subspl	r0, pc, r1, asr #32
 16c:	445f7274 	ldrbmi	r7, [pc], #-628	; 174 <vectors-0x7fffe8c>
 170:	69747365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
 174:	6974616e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, sp, lr}^
 178:	5f006e6f 	svcpl	0x00006e6f
 17c:	5f444e45 	svcpl	0x00444e45
 180:	54584554 	ldrbpl	r4, [r8], #-1364	; 0xfffffaac
 184:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 188:	53425f44 	movtpl	r5, #12100	; 0x2f44
 18c:	535f0053 	cmppl	pc, #83	; 0x53
 190:	5f455a49 	svcpl	0x00455a49
 194:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
 198:	00746573 	rsbseq	r6, r4, r3, ror r5
 19c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 1a0:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
 1a4:	535f0063 	cmppl	pc, #99	; 0x63
 1a8:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 1ac:	5353425f 	cmppl	r3, #-268435451	; 0xf0000005
 1b0:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 1b4:	41445f44 	cmpmi	r4, r4, asr #30
 1b8:	Address 0x00000000000001b8 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000088 	andeq	r0, r0, r8, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800000c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000010:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000014:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000020:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800002c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000030:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000034:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000038:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800003c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000040:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000044:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000048:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800004c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1a      	ldr	r2, [pc, #104]	; (8000138 <_reset+0x74>)
 80000ce:	4b1b      	ldr	r3, [pc, #108]	; (800013c <_reset+0x78>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	109b      	asrs	r3, r3, #2
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	4b1a      	ldr	r3, [pc, #104]	; (8000140 <_reset+0x7c>)
 80000d8:	617b      	str	r3, [r7, #20]
 80000da:	4b18      	ldr	r3, [pc, #96]	; (800013c <_reset+0x78>)
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	613b      	str	r3, [r7, #16]
 80000e2:	e00a      	b.n	80000fa <_reset+0x36>
 80000e4:	697b      	ldr	r3, [r7, #20]
 80000e6:	607b      	str	r3, [r7, #4]
 80000e8:	687b      	ldr	r3, [r7, #4]
 80000ea:	3304      	adds	r3, #4
 80000ec:	607b      	str	r3, [r7, #4]
 80000ee:	697b      	ldr	r3, [r7, #20]
 80000f0:	3304      	adds	r3, #4
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	693b      	ldr	r3, [r7, #16]
 80000f6:	3301      	adds	r3, #1
 80000f8:	613b      	str	r3, [r7, #16]
 80000fa:	693b      	ldr	r3, [r7, #16]
 80000fc:	68ba      	ldr	r2, [r7, #8]
 80000fe:	429a      	cmp	r2, r3
 8000100:	d8f0      	bhi.n	80000e4 <_reset+0x20>
 8000102:	4a10      	ldr	r2, [pc, #64]	; (8000144 <_reset+0x80>)
 8000104:	4b10      	ldr	r3, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	1ad3      	subs	r3, r2, r3
 8000108:	109b      	asrs	r3, r3, #2
 800010a:	60bb      	str	r3, [r7, #8]
 800010c:	4b0e      	ldr	r3, [pc, #56]	; (8000148 <_reset+0x84>)
 800010e:	607b      	str	r3, [r7, #4]
 8000110:	2300      	movs	r3, #0
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	e007      	b.n	8000126 <_reset+0x62>
 8000116:	2300      	movs	r3, #0
 8000118:	607b      	str	r3, [r7, #4]
 800011a:	687b      	ldr	r3, [r7, #4]
 800011c:	3304      	adds	r3, #4
 800011e:	607b      	str	r3, [r7, #4]
 8000120:	68fb      	ldr	r3, [r7, #12]
 8000122:	3301      	adds	r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fb      	ldr	r3, [r7, #12]
 8000128:	68ba      	ldr	r2, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d8f3      	bhi.n	8000116 <_reset+0x52>
 800012e:	b662      	cpsie	i
 8000130:	f7ff ff8e 	bl	8000050 <main>
 8000134:	e7fe      	b.n	8000134 <_reset+0x70>
 8000136:	bf00      	nop
 8000138:	20000004 	andcs	r0, r0, r4
 800013c:	20000000 	andcs	r0, r0, r0
 8000140:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 8000144:	20000004 	andcs	r0, r0, r4
 8000148:	20000004 	andcs	r0, r0, r4

0800014c <Defualt_handler>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	e7fe      	b.n	8000150 <Defualt_handler+0x4>
 8000152:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000117 	andeq	r0, r0, r7, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	00012109 	andeq	r2, r1, r9, lsl #2
  d4:	e2190100 	ands	r0, r9, #0, 2
  d8:	01000000 	mrseq	r0, (UNDEF: 0)
  dc:	00000305 	andeq	r0, r0, r5, lsl #6
  e0:	040a2000 	streq	r2, [sl], #-0
  e4:	000000c5 	andeq	r0, r0, r5, asr #1
  e8:	005a010b 	subseq	r0, sl, fp, lsl #2
  ec:	1b010000 	blne	400f4 <vectors-0x7fbff0c>
  f0:	00011301 	andeq	r1, r1, r1, lsl #6
  f4:	00005000 	andeq	r5, r0, r0
  f8:	0000c408 	andeq	ip, r0, r8, lsl #8
  fc:	00000008 	andeq	r0, r0, r8
 100:	01130100 	tsteq	r3, r0, lsl #2
 104:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
 108:	481d0100 	ldmdami	sp, {r8}
 10c:	02000000 	andeq	r0, r0, #0
 110:	0d007491 	cfstrseq	mvf7, [r0, #-580]	; 0xfffffdbc
 114:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 118:	7f000074 	svcvc	0x00000074
 11c:	02000001 	andeq	r0, r0, #1
 120:	0000bf00 	andeq	fp, r0, r0, lsl #30
 124:	b0010400 	andlt	r0, r1, r0, lsl #8
 128:	0c000000 	stceq	0, cr0, [r0], {-0}
 12c:	0000019c 	muleq	r0, ip, r1
 130:	00000066 	andeq	r0, r0, r6, rrx
 134:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 138:	08000152 	stmdaeq	r0, {r1, r4, r6, r8}
 13c:	00000069 	andeq	r0, r0, r9, rrx
 140:	4c080102 	stfmis	f0, [r8], {2}
 144:	02000000 	andeq	r0, r0, #0
 148:	004e0601 	subeq	r0, lr, r1, lsl #12
 14c:	02020000 	andeq	r0, r2, #0
 150:	00012705 	andeq	r2, r1, r5, lsl #14
 154:	07020200 	streq	r0, [r2, -r0, lsl #4]
 158:	0000009d 	muleq	r0, sp, r0
 15c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 160:	03000000 	movweq	r0, #0
 164:	0000000e 	andeq	r0, r0, lr
 168:	00583302 	subseq	r3, r8, r2, lsl #6
 16c:	48040000 	stmdami	r4, {}	; <UNPREDICTABLE>
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	7b050000 	blvc	14019c <vectors-0x7ebfe64>
 198:	01000001 	tsteq	r0, r1
 19c:	00004812 	andeq	r4, r0, r2, lsl r8
 1a0:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1a4:	0000015e 	andeq	r0, r0, lr, asr r1
 1a8:	00481301 	subeq	r1, r8, r1, lsl #6
 1ac:	01010000 	mrseq	r0, (UNDEF: 1)
 1b0:	0001b105 	andeq	fp, r1, r5, lsl #2
 1b4:	48140100 	ldmdami	r4, {r8}
 1b8:	01000000 	mrseq	r0, (UNDEF: 0)
 1bc:	01a60501 			; <UNDEFINED> instruction: 0x01a60501
 1c0:	15010000 	strne	r0, [r1, #-0]
 1c4:	00000048 	andeq	r0, r0, r8, asr #32
 1c8:	85050101 	strhi	r0, [r5, #-257]	; 0xfffffeff
 1cc:	01000001 	tsteq	r0, r1
 1d0:	00004816 	andeq	r4, r0, r6, lsl r8
 1d4:	06010100 	streq	r0, [r1], -r0, lsl #2
 1d8:	00000053 	andeq	r0, r0, r3, asr r0
 1dc:	000000cc 	andeq	r0, r0, ip, asr #1
 1e0:	0000d107 	andeq	sp, r0, r7, lsl #2
 1e4:	04001300 	streq	r1, [r0], #-768	; 0xfffffd00
 1e8:	000000bc 	strheq	r0, [r0], -ip
 1ec:	32070402 	andcc	r0, r7, #33554432	; 0x2000000
 1f0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
 1f4:	00000146 	andeq	r0, r0, r6, asr #2
 1f8:	00cc3001 	sbceq	r3, ip, r1
 1fc:	05010000 	streq	r0, [r1, #-0]
 200:	00000003 	andeq	r0, r0, r3
 204:	4e010908 	vmlami.f16	s0, s2, s16	; <UNPREDICTABLE>
 208:	01000001 	tsteq	r0, r1
 20c:	014c015d 	cmpeq	ip, sp, asr r1
 210:	01520800 	cmpeq	r2, r0, lsl #16
 214:	00380800 	eorseq	r0, r8, r0, lsl #16
 218:	0a010000 	beq	40220 <vectors-0x7fbfde0>
 21c:	00019501 	andeq	r9, r1, r1, lsl #10
 220:	01480100 	mrseq	r0, (UNDEF: 88)
 224:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 228:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
 22c:	00000064 	andeq	r0, r0, r4, rrx
 230:	00017501 	andeq	r7, r1, r1, lsl #10
 234:	018e0b00 	orreq	r0, lr, r0, lsl #22
 238:	4a010000 	bmi	40240 <vectors-0x7fbfdc0>
 23c:	00000048 	andeq	r0, r0, r8, asr #32
 240:	0b689102 	bleq	1a24650 <vectors-0x65db9b0>
 244:	0000013a 	andeq	r0, r0, sl, lsr r1
 248:	01754b01 	cmneq	r5, r1, lsl #22
 24c:	91020000 	mrsls	r0, (UNDEF: 2)
 250:	016a0b74 	smceq	41140	; 0xa0b4
 254:	4c010000 	stcmi	0, cr0, [r1], {-0}
 258:	00000175 	andeq	r0, r0, r5, ror r1
 25c:	0c649102 	stfeqp	f1, [r4], #-8
 260:	080000de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7}
 264:	08000102 	stmdaeq	r0, {r1, r8}
 268:	0000015e 	andeq	r0, r0, lr, asr r1
 26c:	0100690d 	tsteq	r0, sp, lsl #18
 270:	00017b4d 	andeq	r7, r1, sp, asr #22
 274:	70910200 	addsvc	r0, r1, r0, lsl #4
 278:	01100e00 	tsteq	r0, r0, lsl #28
 27c:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
 280:	690d0800 	stmdbvs	sp, {fp}
 284:	7b540100 	blvc	150068c <vectors-0x6aff974>
 288:	02000001 	andeq	r0, r0, #1
 28c:	00006c91 	muleq	r0, r1, ip
 290:	0048040f 	subeq	r0, r8, pc, lsl #8
 294:	04100000 	ldreq	r0, [r0], #-0
 298:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	00340500 	eorseq	r0, r4, r0, lsl #10
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  fc:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 100:	01060000 	mrseq	r0, (UNDEF: 6)
 104:	01134901 	tsteq	r3, r1, lsl #18
 108:	07000013 	smladeq	r0, r3, r0, r0
 10c:	13490021 	movtne	r0, #36897	; 0x9021
 110:	00000b2f 	andeq	r0, r0, pc, lsr #22
 114:	03003408 	movweq	r3, #1032	; 0x408
 118:	3b0b3a0e 	blcc	2ce958 <vectors-0x7d316a8>
 11c:	3f13490b 	svccc	0x0013490b
 120:	000a020c 	andeq	r0, sl, ip, lsl #4
 124:	002e0900 	eoreq	r0, lr, r0, lsl #18
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors-0x713d1cc>
 148:	01110c27 	tsteq	r1, r7, lsr #24
 14c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 150:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 154:	0b000013 	bleq	1a8 <vectors-0x7fffe58>
 158:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 15c:	0b3b0b3a 	bleq	ec2e4c <vectors-0x713d1b4>
 160:	0a021349 	beq	84e8c <vectors-0x7f7b174>
 164:	0b0c0000 	bleq	30016c <vectors-0x7cffe94>
 168:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 16c:	00130101 	andseq	r0, r3, r1, lsl #2
 170:	00340d00 	eorseq	r0, r4, r0, lsl #26
 174:	0b3a0803 	bleq	e82188 <vectors-0x717de78>
 178:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 17c:	00000a02 	andeq	r0, r0, r2, lsl #20
 180:	11010b0e 	tstne	r1, lr, lsl #22
 184:	00011201 	andeq	r1, r1, r1, lsl #4
 188:	000f0f00 	andeq	r0, pc, r0, lsl #30
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	24100000 	ldrcs	r0, [r0], #-0
 194:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 198:	0008030b 	andeq	r0, r8, fp, lsl #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000088 	andeq	r0, r0, r8, lsl #1
  3c:	0000008a 	andeq	r0, r0, sl, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008a 	andeq	r0, r0, sl, lsl #1
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	0000008c 	andeq	r0, r0, ip, lsl #1
  54:	0000008e 	andeq	r0, r0, lr, lsl #1
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000088 	andeq	r0, r0, r8, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	011b0002 	tsteq	fp, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c703 	tsteq	r0, r3, lsl #14
  b4:	2f59213d 	svccs	0x0059213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	002f0304 	eoreq	r0, pc, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0xffffff9b
 148:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 14c:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 150:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 154:	61685f74 	smcvs	34292	; 0x85f4
 158:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 15c:	535f0072 	cmppl	pc, #114	; 0x72
 160:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 164:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 168:	505f0041 	subspl	r0, pc, r1, asr #32
 16c:	445f7274 	ldrbmi	r7, [pc], #-628	; 174 <vectors-0x7fffe8c>
 170:	69747365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
 174:	6974616e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, sp, lr}^
 178:	5f006e6f 	svcpl	0x00006e6f
 17c:	5f444e45 	svcpl	0x00444e45
 180:	54584554 	ldrbpl	r4, [r8], #-1364	; 0xfffffaac
 184:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 188:	53425f44 	movtpl	r5, #12100	; 0x2f44
 18c:	535f0053 	cmppl	pc, #83	; 0x53
 190:	5f455a49 	svcpl	0x00455a49
 194:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
 198:	00746573 	rsbseq	r6, r4, r3, ror r5
 19c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 1a0:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
 1a4:	535f0063 	cmppl	pc, #99	; 0x63
 1a8:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 1ac:	5353425f 	cmppl	r3, #-268435451	; 0xf0000005
 1b0:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 1b4:	41445f44 	cmpmi	r4, r4, asr #30
 1b8:	Address 0x00000000000001b8 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000088 	andeq	r0, r0, r8, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001000 	andcs	r1, r0, r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800000c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000010:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000014:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000020:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800002c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000030:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000034:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000038:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800003c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000040:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000044:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000048:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800004c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1a      	ldr	r2, [pc, #104]	; (8000138 <_reset+0x74>)
 80000ce:	4b1b      	ldr	r3, [pc, #108]	; (800013c <_reset+0x78>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	109b      	asrs	r3, r3, #2
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	4b1a      	ldr	r3, [pc, #104]	; (8000140 <_reset+0x7c>)
 80000d8:	617b      	str	r3, [r7, #20]
 80000da:	4b18      	ldr	r3, [pc, #96]	; (800013c <_reset+0x78>)
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	613b      	str	r3, [r7, #16]
 80000e2:	e00a      	b.n	80000fa <_reset+0x36>
 80000e4:	697b      	ldr	r3, [r7, #20]
 80000e6:	607b      	str	r3, [r7, #4]
 80000e8:	687b      	ldr	r3, [r7, #4]
 80000ea:	3304      	adds	r3, #4
 80000ec:	607b      	str	r3, [r7, #4]
 80000ee:	697b      	ldr	r3, [r7, #20]
 80000f0:	3304      	adds	r3, #4
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	693b      	ldr	r3, [r7, #16]
 80000f6:	3301      	adds	r3, #1
 80000f8:	613b      	str	r3, [r7, #16]
 80000fa:	693b      	ldr	r3, [r7, #16]
 80000fc:	68ba      	ldr	r2, [r7, #8]
 80000fe:	429a      	cmp	r2, r3
 8000100:	d8f0      	bhi.n	80000e4 <_reset+0x20>
 8000102:	4a10      	ldr	r2, [pc, #64]	; (8000144 <_reset+0x80>)
 8000104:	4b10      	ldr	r3, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	1ad3      	subs	r3, r2, r3
 8000108:	109b      	asrs	r3, r3, #2
 800010a:	60bb      	str	r3, [r7, #8]
 800010c:	4b0e      	ldr	r3, [pc, #56]	; (8000148 <_reset+0x84>)
 800010e:	607b      	str	r3, [r7, #4]
 8000110:	2300      	movs	r3, #0
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	e007      	b.n	8000126 <_reset+0x62>
 8000116:	2300      	movs	r3, #0
 8000118:	607b      	str	r3, [r7, #4]
 800011a:	687b      	ldr	r3, [r7, #4]
 800011c:	3304      	adds	r3, #4
 800011e:	607b      	str	r3, [r7, #4]
 8000120:	68fb      	ldr	r3, [r7, #12]
 8000122:	3301      	adds	r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fb      	ldr	r3, [r7, #12]
 8000128:	68ba      	ldr	r2, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d8f3      	bhi.n	8000116 <_reset+0x52>
 800012e:	b662      	cpsie	i
 8000130:	f7ff ff8e 	bl	8000050 <main>
 8000134:	e7fe      	b.n	8000134 <_reset+0x70>
 8000136:	bf00      	nop
 8000138:	20000004 	andcs	r0, r0, r4
 800013c:	20000000 	andcs	r0, r0, r0
 8000140:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 8000144:	20000004 	andcs	r0, r0, r4
 8000148:	20000004 	andcs	r0, r0, r4

0800014c <Defualt_handler>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	e7fe      	b.n	8000150 <Defualt_handler+0x4>
 8000152:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000011c 	andeq	r0, r0, ip, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01210900 			; <UNDEFINED> instruction: 0x01210900
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0118011b 	tsteq	r8, fp, lsl r1
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	1d010069 	stcne	0, cr0, [r1, #-420]	; 0xfffffe5c
 110:	00000048 	andeq	r0, r0, r8, asr #32
 114:	00749102 	rsbseq	r9, r4, r2, lsl #2
 118:	6905040d 	stmdbvs	r5, {r0, r2, r3, sl}
 11c:	0000746e 	andeq	r7, r0, lr, ror #8
 120:	0000017f 	andeq	r0, r0, pc, ror r1
 124:	00bf0002 	adcseq	r0, pc, r2
 128:	01040000 	mrseq	r0, (UNDEF: 4)
 12c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 130:	00019c0c 	andeq	r9, r1, ip, lsl #24
 134:	00006600 	andeq	r6, r0, r0, lsl #12
 138:	0000c400 	andeq	ip, r0, r0, lsl #8
 13c:	00015208 	andeq	r5, r1, r8, lsl #4
 140:	00006908 	andeq	r6, r0, r8, lsl #18
 144:	08010200 	stmdaeq	r1, {r9}
 148:	0000004c 	andeq	r0, r0, ip, asr #32
 14c:	4e060102 	adfmis	f0, f6, f2
 150:	02000000 	andeq	r0, r0, #0
 154:	01270502 			; <UNDEFINED> instruction: 0x01270502
 158:	02020000 	andeq	r0, r2, #0
 15c:	00009d07 	andeq	r9, r0, r7, lsl #26
 160:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
 164:	00000005 	andeq	r0, r0, r5
 168:	00000e03 	andeq	r0, r0, r3, lsl #28
 16c:	58330200 	ldmdapl	r3!, {r9}
 170:	04000000 	streq	r0, [r0], #-0
 174:	00000048 	andeq	r0, r0, r8, asr #32
 178:	2d070402 	cfstrscs	mvf0, [r7, #-8]
 17c:	02000000 	andeq	r0, r0, #0
 180:	00000508 	andeq	r0, r0, r8, lsl #10
 184:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 188:	00002807 	andeq	r2, r0, r7, lsl #16
 18c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
 190:	0000011b 	andeq	r0, r0, fp, lsl r1
 194:	5f040802 	svcpl	0x00040802
 198:	05000000 	streq	r0, [r0, #-0]
 19c:	0000017b 	andeq	r0, r0, fp, ror r1
 1a0:	00481201 	subeq	r1, r8, r1, lsl #4
 1a4:	01010000 	mrseq	r0, (UNDEF: 1)
 1a8:	00015e05 	andeq	r5, r1, r5, lsl #28
 1ac:	48130100 	ldmdami	r3, {r8}
 1b0:	01000000 	mrseq	r0, (UNDEF: 0)
 1b4:	01b10501 			; <UNDEFINED> instruction: 0x01b10501
 1b8:	14010000 	strne	r0, [r1], #-0
 1bc:	00000048 	andeq	r0, r0, r8, asr #32
 1c0:	a6050101 	strge	r0, [r5], -r1, lsl #2
 1c4:	01000001 	tsteq	r0, r1
 1c8:	00004815 	andeq	r4, r0, r5, lsl r8
 1cc:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1d0:	00000185 	andeq	r0, r0, r5, lsl #3
 1d4:	00481601 	subeq	r1, r8, r1, lsl #12
 1d8:	01010000 	mrseq	r0, (UNDEF: 1)
 1dc:	00005306 	andeq	r5, r0, r6, lsl #6
 1e0:	0000cc00 	andeq	ip, r0, r0, lsl #24
 1e4:	00d10700 	sbcseq	r0, r1, r0, lsl #14
 1e8:	00130000 	andseq	r0, r3, r0
 1ec:	0000bc04 	andeq	fp, r0, r4, lsl #24
 1f0:	07040200 	streq	r0, [r4, -r0, lsl #4]
 1f4:	00000032 	andeq	r0, r0, r2, lsr r0
 1f8:	00014608 	andeq	r4, r1, r8, lsl #12
 1fc:	cc300100 	ldfgts	f0, [r0], #-0
 200:	01000000 	mrseq	r0, (UNDEF: 0)
 204:	00000305 	andeq	r0, r0, r5, lsl #6
 208:	01090800 	tsteq	r9, r0, lsl #16
 20c:	0000014e 	andeq	r0, r0, lr, asr #2
 210:	4c015d01 	stcmi	13, cr5, [r1], {1}
 214:	52080001 	andpl	r0, r8, #1
 218:	38080001 	stmdacc	r8, {r0}
 21c:	01000000 	mrseq	r0, (UNDEF: 0)
 220:	0195010a 	orrseq	r0, r5, sl, lsl #2
 224:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
 228:	0000c401 	andeq	ip, r0, r1, lsl #8
 22c:	00014c08 	andeq	r4, r1, r8, lsl #24
 230:	00006408 	andeq	r6, r0, r8, lsl #8
 234:	01750100 	cmneq	r5, r0, lsl #2
 238:	8e0b0000 	cdphi	0, 0, cr0, cr11, cr0, {0}
 23c:	01000001 	tsteq	r0, r1
 240:	0000484a 	andeq	r4, r0, sl, asr #16
 244:	68910200 	ldmvs	r1, {r9}
 248:	00013a0b 	andeq	r3, r1, fp, lsl #20
 24c:	754b0100 	strbvc	r0, [fp, #-256]	; 0xffffff00
 250:	02000001 	andeq	r0, r0, #1
 254:	6a0b7491 	bvs	2dd4a0 <vectors-0x7d22b60>
 258:	01000001 	tsteq	r0, r1
 25c:	0001754c 	andeq	r7, r1, ip, asr #10
 260:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 264:	0000de0c 	andeq	sp, r0, ip, lsl #28
 268:	00010208 	andeq	r0, r1, r8, lsl #4
 26c:	00015e08 	andeq	r5, r1, r8, lsl #28
 270:	00690d00 	rsbeq	r0, r9, r0, lsl #26
 274:	017b4d01 	cmneq	fp, r1, lsl #26
 278:	91020000 	mrsls	r0, (UNDEF: 2)
 27c:	100e0070 	andne	r0, lr, r0, ror r0
 280:	2e080001 	cdpcs	0, 0, cr0, cr8, cr1, {0}
 284:	0d080001 	stceq	0, cr0, [r8, #-4]
 288:	54010069 	strpl	r0, [r1], #-105	; 0xffffff97
 28c:	0000017b 	andeq	r0, r0, fp, ror r1
 290:	006c9102 	rsbeq	r9, ip, r2, lsl #2
 294:	48040f00 	stmdami	r4, {r8, r9, sl, fp}
 298:	10000000 	andne	r0, r0, r0
 29c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 2a0:	Address 0x00000000000002a0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	00340500 	eorseq	r0, r4, r0, lsl #10
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  fc:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 100:	01060000 	mrseq	r0, (UNDEF: 6)
 104:	01134901 	tsteq	r3, r1, lsl #18
 108:	07000013 	smladeq	r0, r3, r0, r0
 10c:	13490021 	movtne	r0, #36897	; 0x9021
 110:	00000b2f 	andeq	r0, r0, pc, lsr #22
 114:	03003408 	movweq	r3, #1032	; 0x408
 118:	3b0b3a0e 	blcc	2ce958 <vectors-0x7d316a8>
 11c:	3f13490b 	svccc	0x0013490b
 120:	000a020c 	andeq	r0, sl, ip, lsl #4
 124:	002e0900 	eoreq	r0, lr, r0, lsl #18
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors-0x713d1cc>
 148:	01110c27 	tsteq	r1, r7, lsr #24
 14c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 150:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 154:	0b000013 	bleq	1a8 <vectors-0x7fffe58>
 158:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 15c:	0b3b0b3a 	bleq	ec2e4c <vectors-0x713d1b4>
 160:	0a021349 	beq	84e8c <vectors-0x7f7b174>
 164:	0b0c0000 	bleq	30016c <vectors-0x7cffe94>
 168:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 16c:	00130101 	andseq	r0, r3, r1, lsl #2
 170:	00340d00 	eorseq	r0, r4, r0, lsl #26
 174:	0b3a0803 	bleq	e82188 <vectors-0x717de78>
 178:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 17c:	00000a02 	andeq	r0, r0, r2, lsl #20
 180:	11010b0e 	tstne	r1, lr, lsl #22
 184:	00011201 	andeq	r1, r1, r1, lsl #4
 188:	000f0f00 	andeq	r0, pc, r0, lsl #30
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	24100000 	ldrcs	r0, [r0], #-0
 194:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 198:	0008030b 	andeq	r0, r8, fp, lsl #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000088 	andeq	r0, r0, r8, lsl #1
  3c:	0000008a 	andeq	r0, r0, sl, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008a 	andeq	r0, r0, sl, lsl #1
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	0000008c 	andeq	r0, r0, ip, lsl #1
  54:	0000008e 	andeq	r0, r0, lr, lsl #1
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000088 	andeq	r0, r0, r8, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01200002 			; <UNDEFINED> instruction: 0x01200002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c703 	tsteq	r0, r3, lsl #14
  b4:	2f59213d 	svccs	0x0059213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	002f0304 	eoreq	r0, pc, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0xffffff9b
 148:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 14c:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 150:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 154:	61685f74 	smcvs	34292	; 0x85f4
 158:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 15c:	535f0072 	cmppl	pc, #114	; 0x72
 160:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 164:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 168:	505f0041 	subspl	r0, pc, r1, asr #32
 16c:	445f7274 	ldrbmi	r7, [pc], #-628	; 174 <vectors-0x7fffe8c>
 170:	69747365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}^
 174:	6974616e 	ldmdbvs	r4!, {r1, r2, r3, r5, r6, r8, sp, lr}^
 178:	5f006e6f 	svcpl	0x00006e6f
 17c:	5f444e45 	svcpl	0x00444e45
 180:	54584554 	ldrbpl	r4, [r8], #-1364	; 0xfffffaac
 184:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 188:	53425f44 	movtpl	r5, #12100	; 0x2f44
 18c:	535f0053 	cmppl	pc, #83	; 0x53
 190:	5f455a49 	svcpl	0x00455a49
 194:	65725f00 	ldrbvs	r5, [r2, #-3840]!	; 0xfffff100
 198:	00746573 	rsbseq	r6, r4, r3, ror r5
 19c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 1a0:	2e707574 	mrccs	5, 3, r7, cr0, cr4, {3}
 1a4:	535f0063 	cmppl	pc, #99	; 0x63
 1a8:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 1ac:	5353425f 	cmppl	r3, #-268435451	; 0xf0000005
 1b0:	4e455f00 	cdpmi	15, 4, cr5, cr5, cr0, {0}
 1b4:	41445f44 	cmpmi	r4, r4, asr #30
 1b8:	Address 0x00000000000001b8 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000088 	andeq	r0, r0, r8, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001004 	andcs	r1, r0, r4
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800000c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000010:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000014:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000020:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800002c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000030:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000034:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000038:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800003c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000040:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000044:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000048:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800004c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1a      	ldr	r2, [pc, #104]	; (8000138 <_reset+0x74>)
 80000ce:	4b1b      	ldr	r3, [pc, #108]	; (800013c <_reset+0x78>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	109b      	asrs	r3, r3, #2
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	4b1a      	ldr	r3, [pc, #104]	; (8000140 <_reset+0x7c>)
 80000d8:	617b      	str	r3, [r7, #20]
 80000da:	4b18      	ldr	r3, [pc, #96]	; (800013c <_reset+0x78>)
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	613b      	str	r3, [r7, #16]
 80000e2:	e00a      	b.n	80000fa <_reset+0x36>
 80000e4:	697b      	ldr	r3, [r7, #20]
 80000e6:	607b      	str	r3, [r7, #4]
 80000e8:	687b      	ldr	r3, [r7, #4]
 80000ea:	3304      	adds	r3, #4
 80000ec:	607b      	str	r3, [r7, #4]
 80000ee:	697b      	ldr	r3, [r7, #20]
 80000f0:	3304      	adds	r3, #4
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	693b      	ldr	r3, [r7, #16]
 80000f6:	3301      	adds	r3, #1
 80000f8:	613b      	str	r3, [r7, #16]
 80000fa:	693b      	ldr	r3, [r7, #16]
 80000fc:	68ba      	ldr	r2, [r7, #8]
 80000fe:	429a      	cmp	r2, r3
 8000100:	d8f0      	bhi.n	80000e4 <_reset+0x20>
 8000102:	4a10      	ldr	r2, [pc, #64]	; (8000144 <_reset+0x80>)
 8000104:	4b10      	ldr	r3, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	1ad3      	subs	r3, r2, r3
 8000108:	109b      	asrs	r3, r3, #2
 800010a:	60bb      	str	r3, [r7, #8]
 800010c:	4b0e      	ldr	r3, [pc, #56]	; (8000148 <_reset+0x84>)
 800010e:	607b      	str	r3, [r7, #4]
 8000110:	2300      	movs	r3, #0
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	e007      	b.n	8000126 <_reset+0x62>
 8000116:	2300      	movs	r3, #0
 8000118:	607b      	str	r3, [r7, #4]
 800011a:	687b      	ldr	r3, [r7, #4]
 800011c:	3304      	adds	r3, #4
 800011e:	607b      	str	r3, [r7, #4]
 8000120:	68fb      	ldr	r3, [r7, #12]
 8000122:	3301      	adds	r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fb      	ldr	r3, [r7, #12]
 8000128:	68ba      	ldr	r2, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d8f3      	bhi.n	8000116 <_reset+0x52>
 800012e:	b662      	cpsie	i
 8000130:	f7ff ff8e 	bl	8000050 <main>
 8000134:	e7fe      	b.n	8000134 <_reset+0x70>
 8000136:	bf00      	nop
 8000138:	20000004 	andcs	r0, r0, r4
 800013c:	20000000 	andcs	r0, r0, r0
 8000140:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 8000144:	20000004 	andcs	r0, r0, r4
 8000148:	20000004 	andcs	r0, r0, r4

0800014c <Defualt_handler>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	e7fe      	b.n	8000150 <Defualt_handler+0x4>
 8000152:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .bss:

20000004 <_END_BSS>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000011c 	andeq	r0, r0, ip, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01210900 			; <UNDEFINED> instruction: 0x01210900
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0118011b 	tsteq	r8, fp, lsl r1
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	1d010069 	stcne	0, cr0, [r1, #-420]	; 0xfffffe5c
 110:	00000048 	andeq	r0, r0, r8, asr #32
 114:	00749102 	rsbseq	r9, r4, r2, lsl #2
 118:	6905040d 	stmdbvs	r5, {r0, r2, r3, sl}
 11c:	0000746e 	andeq	r7, r0, lr, ror #8
 120:	00000182 	andeq	r0, r0, r2, lsl #3
 124:	00bf0002 	adcseq	r0, pc, r2
 128:	01040000 	mrseq	r0, (UNDEF: 4)
 12c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 130:	0001a70c 	andeq	sl, r1, ip, lsl #14
 134:	00006600 	andeq	r6, r0, r0, lsl #12
 138:	0000c400 	andeq	ip, r0, r0, lsl #8
 13c:	00015208 	andeq	r5, r1, r8, lsl #4
 140:	00006908 	andeq	r6, r0, r8, lsl #18
 144:	08010200 	stmdaeq	r1, {r9}
 148:	0000004c 	andeq	r0, r0, ip, asr #32
 14c:	4e060102 	adfmis	f0, f6, f2
 150:	02000000 	andeq	r0, r0, #0
 154:	01270502 			; <UNDEFINED> instruction: 0x01270502
 158:	02020000 	andeq	r0, r2, #0
 15c:	00009d07 	andeq	r9, r0, r7, lsl #26
 160:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
 164:	00000005 	andeq	r0, r0, r5
 168:	00000e03 	andeq	r0, r0, r3, lsl #28
 16c:	53330200 	teqpl	r3, #0, 4
 170:	02000000 	andeq	r0, r0, #0
 174:	002d0704 	eoreq	r0, sp, r4, lsl #14
 178:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 17c:	00000005 	andeq	r0, r0, r5
 180:	07080200 	streq	r0, [r8, -r0, lsl #4]
 184:	00000028 	andeq	r0, r0, r8, lsr #32
 188:	1b040402 	blne	101198 <vectors-0x7efee68>
 18c:	02000001 	andeq	r0, r0, #1
 190:	005f0408 	subseq	r0, pc, r8, lsl #8
 194:	6a040000 	bvs	10019c <vectors-0x7effe64>
 198:	01000001 	tsteq	r0, r1
 19c:	00004808 	andeq	r4, r0, r8, lsl #16
 1a0:	04010100 	streq	r0, [r1], #-256	; 0xffffff00
 1a4:	00000186 	andeq	r0, r0, r6, lsl #3
 1a8:	00481401 	subeq	r1, r8, r1, lsl #8
 1ac:	01010000 	mrseq	r0, (UNDEF: 1)
 1b0:	00015e04 	andeq	r5, r1, r4, lsl #28
 1b4:	48150100 	ldmdami	r5, {r8}
 1b8:	01000000 	mrseq	r0, (UNDEF: 0)
 1bc:	01bc0401 			; <UNDEFINED> instruction: 0x01bc0401
 1c0:	16010000 	strne	r0, [r1], -r0
 1c4:	00000048 	andeq	r0, r0, r8, asr #32
 1c8:	b1040101 	tstlt	r4, r1, lsl #2
 1cc:	01000001 	tsteq	r0, r1
 1d0:	00004817 	andeq	r4, r0, r7, lsl r8
 1d4:	04010100 	streq	r0, [r1], #-256	; 0xffffff00
 1d8:	00000190 	muleq	r0, r0, r1
 1dc:	00481801 	subeq	r1, r8, r1, lsl #16
 1e0:	01010000 	mrseq	r0, (UNDEF: 1)
 1e4:	00004805 	andeq	r4, r0, r5, lsl #16
 1e8:	0000d400 	andeq	sp, r0, r0, lsl #8
 1ec:	00d40600 	sbcseq	r0, r4, r0, lsl #12
 1f0:	00130000 	andseq	r0, r3, r0
 1f4:	32070402 	andcc	r0, r7, #33554432	; 0x2000000
 1f8:	07000000 	streq	r0, [r0, -r0]
 1fc:	00000146 	andeq	r0, r0, r6, asr #2
 200:	00c43201 	sbceq	r3, r4, r1, lsl #4
 204:	05010000 	streq	r0, [r1, #-0]
 208:	00000003 	andeq	r0, r0, r3
 20c:	4e010808 	cdpmi	8, 0, cr0, cr1, cr8, {0}
 210:	01000001 	tsteq	r0, r1
 214:	014c015f 	cmpeq	ip, pc, asr r1
 218:	01520800 	cmpeq	r2, r0, lsl #16
 21c:	00380800 	eorseq	r0, r8, r0, lsl #16
 220:	09010000 	stmdbeq	r1, {}	; <UNPREDICTABLE>
 224:	0001a001 	andeq	sl, r1, r1
 228:	014a0100 	mrseq	r0, (UNDEF: 90)
 22c:	080000c4 	stmdaeq	r0, {r2, r6, r7}
 230:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
 234:	00000064 	andeq	r0, r0, r4, rrx
 238:	00017801 	andeq	r7, r1, r1, lsl #16
 23c:	01990a00 	orrseq	r0, r9, r0, lsl #20
 240:	4c010000 	stcmi	0, cr0, [r1], {-0}
 244:	00000048 	andeq	r0, r0, r8, asr #32
 248:	0a689102 	beq	1a24658 <vectors-0x65db9a8>
 24c:	0000013a 	andeq	r0, r0, sl, lsr r1
 250:	01784d01 	cmneq	r8, r1, lsl #26
 254:	91020000 	mrsls	r0, (UNDEF: 2)
 258:	01750a74 	cmneq	r5, r4, ror sl
 25c:	4e010000 	cdpmi	0, 0, cr0, cr1, cr0, {0}
 260:	00000178 	andeq	r0, r0, r8, ror r1
 264:	0b649102 	bleq	1924674 <vectors-0x66db98c>
 268:	080000de 	stmdaeq	r0, {r1, r2, r3, r4, r6, r7}
 26c:	08000102 	stmdaeq	r0, {r1, r8}
 270:	00000161 	andeq	r0, r0, r1, ror #2
 274:	0100690c 	tsteq	r0, ip, lsl #18
 278:	00017e4f 	andeq	r7, r1, pc, asr #28
 27c:	70910200 	addsvc	r0, r1, r0, lsl #4
 280:	01100d00 	tsteq	r0, r0, lsl #26
 284:	012e0800 			; <UNDEFINED> instruction: 0x012e0800
 288:	690c0800 	stmdbvs	ip, {fp}
 28c:	7e560100 	rdfvcs	f0, f6, f0
 290:	02000001 	andeq	r0, r0, #1
 294:	00006c91 	muleq	r0, r1, ip
 298:	0048040e 	subeq	r0, r8, lr, lsl #8
 29c:	040f0000 	streq	r0, [pc], #-0	; 2a4 <vectors-0x7fffd5c>
 2a0:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	34040000 	strcc	r0, [r4], #-0
  ec:	3a0e0300 	bcc	380cf4 <vectors-0x7c7f30c>
  f0:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  f4:	3c0c3f13 	stccc	15, cr3, [ip], {19}
  f8:	0500000c 	streq	r0, [r0, #-12]
  fc:	13490101 	movtne	r0, #37121	; 0x9101
 100:	00001301 	andeq	r1, r0, r1, lsl #6
 104:	49002106 	stmdbmi	r0, {r1, r2, r8, sp}
 108:	000b2f13 	andeq	r2, fp, r3, lsl pc
 10c:	00340700 	eorseq	r0, r4, r0, lsl #14
 110:	0b3a0e03 	bleq	e83924 <vectors-0x717c6dc>
 114:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 118:	0a020c3f 	beq	8321c <vectors-0x7f7cde4>
 11c:	2e080000 	cdpcs	0, 0, cr0, cr8, cr0, {0}
 120:	030c3f00 	movweq	r3, #52992	; 0xcf00
 124:	3b0b3a0e 	blcc	2ce964 <vectors-0x7d3169c>
 128:	110c270b 	tstne	ip, fp, lsl #14
 12c:	40011201 	andmi	r1, r1, r1, lsl #4
 130:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 134:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 138:	030c3f01 	movweq	r3, #52993	; 0xcf01
 13c:	3b0b3a0e 	blcc	2ce97c <vectors-0x7d31684>
 140:	110c270b 	tstne	ip, fp, lsl #14
 144:	40011201 	andmi	r1, r1, r1, lsl #4
 148:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 14c:	00001301 	andeq	r1, r0, r1, lsl #6
 150:	0300340a 	movweq	r3, #1034	; 0x40a
 154:	3b0b3a0e 	blcc	2ce994 <vectors-0x7d3166c>
 158:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 15c:	0b00000a 	bleq	18c <vectors-0x7fffe74>
 160:	0111010b 	tsteq	r1, fp, lsl #2
 164:	13010112 	movwne	r0, #4370	; 0x1112
 168:	340c0000 	strcc	r0, [ip], #-0
 16c:	3a080300 	bcc	200d74 <vectors-0x7dff28c>
 170:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 174:	000a0213 	andeq	r0, sl, r3, lsl r2
 178:	010b0d00 	tsteq	fp, r0, lsl #26
 17c:	01120111 	tsteq	r2, r1, lsl r1
 180:	0f0e0000 	svceq	0x000e0000
 184:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 188:	0f000013 	svceq	0x00000013
 18c:	0b0b0024 	bleq	2c0224 <vectors-0x7d3fddc>
 190:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 194:	Address 0x0000000000000194 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000088 	andeq	r0, r0, r8, lsl #1
  3c:	0000008a 	andeq	r0, r0, sl, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008a 	andeq	r0, r0, sl, lsl #1
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	0000008c 	andeq	r0, r0, ip, lsl #1
  54:	0000008e 	andeq	r0, r0, lr, lsl #1
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000088 	andeq	r0, r0, r8, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01200002 			; <UNDEFINED> instruction: 0x01200002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c903 	tsteq	r0, r3, lsl #18
  b4:	2f59213d 	svccs	0x0059213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	002f0304 	eoreq	r0, pc, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0xffffff9b
 148:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 14c:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 150:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 154:	61685f74 	smcvs	34292	; 0x85f4
 158:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 15c:	535f0072 	cmppl	pc, #114	; 0x72
 160:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 164:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 168:	535f0041 	cmppl	pc, #65	; 0x41
 16c:	4b434154 	blmi	10d06c4 <vectors-0x6f2f93c>
 170:	504f545f 	subpl	r5, pc, pc, asr r4	; <UNPREDICTABLE>
 174:	74505f00 	ldrbvc	r5, [r0], #-3840	; 0xfffff100
 178:	65445f72 	strbvs	r5, [r4, #-3954]	; 0xfffff08e
 17c:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
 180:	6f697461 	svcvs	0x00697461
 184:	455f006e 	ldrbmi	r0, [pc, #-110]	; 11e <vectors-0x7fffee2>
 188:	545f444e 	ldrbpl	r4, [pc], #-1102	; 190 <vectors-0x7fffe70>
 18c:	00545845 	subseq	r5, r4, r5, asr #16
 190:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 194:	5353425f 	cmppl	r3, #-268435451	; 0xf0000005
 198:	49535f00 	ldmdbmi	r3, {r8, r9, sl, fp, ip, lr}^
 19c:	005f455a 	subseq	r4, pc, sl, asr r5	; <UNPREDICTABLE>
 1a0:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
 1a4:	73007465 	movwvc	r7, #1125	; 0x465
 1a8:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 1ac:	632e7075 			; <UNDEFINED> instruction: 0x632e7075
 1b0:	54535f00 	ldrbpl	r5, [r3], #-3840	; 0xfffff100
 1b4:	5f545241 	svcpl	0x00545241
 1b8:	00535342 	subseq	r5, r3, r2, asr #6
 1bc:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 1c0:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 1c4:	Address 0x00000000000001c4 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000088 	andeq	r0, r0, r8, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001004 	andcs	r1, r0, r4
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800000c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000010:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000014:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000020:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800002c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000030:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000034:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000038:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800003c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000040:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000044:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 8000048:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}
 800004c:	0800014d 	stmdaeq	r0, {r0, r2, r3, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1a      	ldr	r2, [pc, #104]	; (8000138 <_reset+0x74>)
 80000ce:	4b1b      	ldr	r3, [pc, #108]	; (800013c <_reset+0x78>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	109b      	asrs	r3, r3, #2
 80000d4:	60bb      	str	r3, [r7, #8]
 80000d6:	4b1a      	ldr	r3, [pc, #104]	; (8000140 <_reset+0x7c>)
 80000d8:	617b      	str	r3, [r7, #20]
 80000da:	4b18      	ldr	r3, [pc, #96]	; (800013c <_reset+0x78>)
 80000dc:	607b      	str	r3, [r7, #4]
 80000de:	2300      	movs	r3, #0
 80000e0:	613b      	str	r3, [r7, #16]
 80000e2:	e00a      	b.n	80000fa <_reset+0x36>
 80000e4:	697b      	ldr	r3, [r7, #20]
 80000e6:	607b      	str	r3, [r7, #4]
 80000e8:	687b      	ldr	r3, [r7, #4]
 80000ea:	3304      	adds	r3, #4
 80000ec:	607b      	str	r3, [r7, #4]
 80000ee:	697b      	ldr	r3, [r7, #20]
 80000f0:	3304      	adds	r3, #4
 80000f2:	617b      	str	r3, [r7, #20]
 80000f4:	693b      	ldr	r3, [r7, #16]
 80000f6:	3301      	adds	r3, #1
 80000f8:	613b      	str	r3, [r7, #16]
 80000fa:	693b      	ldr	r3, [r7, #16]
 80000fc:	68ba      	ldr	r2, [r7, #8]
 80000fe:	429a      	cmp	r2, r3
 8000100:	d8f0      	bhi.n	80000e4 <_reset+0x20>
 8000102:	4a10      	ldr	r2, [pc, #64]	; (8000144 <_reset+0x80>)
 8000104:	4b10      	ldr	r3, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	1ad3      	subs	r3, r2, r3
 8000108:	109b      	asrs	r3, r3, #2
 800010a:	60bb      	str	r3, [r7, #8]
 800010c:	4b0e      	ldr	r3, [pc, #56]	; (8000148 <_reset+0x84>)
 800010e:	607b      	str	r3, [r7, #4]
 8000110:	2300      	movs	r3, #0
 8000112:	60fb      	str	r3, [r7, #12]
 8000114:	e007      	b.n	8000126 <_reset+0x62>
 8000116:	2300      	movs	r3, #0
 8000118:	607b      	str	r3, [r7, #4]
 800011a:	687b      	ldr	r3, [r7, #4]
 800011c:	3304      	adds	r3, #4
 800011e:	607b      	str	r3, [r7, #4]
 8000120:	68fb      	ldr	r3, [r7, #12]
 8000122:	3301      	adds	r3, #1
 8000124:	60fb      	str	r3, [r7, #12]
 8000126:	68fb      	ldr	r3, [r7, #12]
 8000128:	68ba      	ldr	r2, [r7, #8]
 800012a:	429a      	cmp	r2, r3
 800012c:	d8f3      	bhi.n	8000116 <_reset+0x52>
 800012e:	b662      	cpsie	i
 8000130:	f7ff ff8e 	bl	8000050 <main>
 8000134:	e7fe      	b.n	8000134 <_reset+0x70>
 8000136:	bf00      	nop
 8000138:	20000004 	andcs	r0, r0, r4
 800013c:	20000000 	andcs	r0, r0, r0
 8000140:	08000154 	stmdaeq	r0, {r2, r4, r6, r8}
 8000144:	20000004 	andcs	r0, r0, r4
 8000148:	20000004 	andcs	r0, r0, r4

0800014c <Defualt_handler>:
 800014c:	b480      	push	{r7}
 800014e:	af00      	add	r7, sp, #0
 8000150:	e7fe      	b.n	8000150 <Defualt_handler+0x4>
 8000152:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .bss:

20000004 <_END_BSS>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000011c 	andeq	r0, r0, ip, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01210900 			; <UNDEFINED> instruction: 0x01210900
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0118011b 	tsteq	r8, fp, lsl r1
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	1d010069 	stcne	0, cr0, [r1, #-420]	; 0xfffffe5c
 110:	00000048 	andeq	r0, r0, r8, asr #32
 114:	00749102 	rsbseq	r9, r4, r2, lsl #2
 118:	6905040d 	stmdbvs	r5, {r0, r2, r3, sl}
 11c:	0000746e 	andeq	r7, r0, lr, ror #8
 120:	0000018c 	andeq	r0, r0, ip, lsl #3
 124:	00bf0002 	adcseq	r0, pc, r2
 128:	01040000 	mrseq	r0, (UNDEF: 4)
 12c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 130:	0001a70c 	andeq	sl, r1, ip, lsl #14
 134:	00006600 	andeq	r6, r0, r0, lsl #12
 138:	0000c400 	andeq	ip, r0, r0, lsl #8
 13c:	00015208 	andeq	r5, r1, r8, lsl #4
 140:	00006908 	andeq	r6, r0, r8, lsl #18
 144:	08010200 	stmdaeq	r1, {r9}
 148:	0000004c 	andeq	r0, r0, ip, asr #32
 14c:	4e060102 	adfmis	f0, f6, f2
 150:	02000000 	andeq	r0, r0, #0
 154:	01270502 			; <UNDEFINED> instruction: 0x01270502
 158:	02020000 	andeq	r0, r2, #0
 15c:	00009d07 	andeq	r9, r0, r7, lsl #26
 160:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
 164:	00000005 	andeq	r0, r0, r5
 168:	00000e03 	andeq	r0, r0, r3, lsl #28
 16c:	58330200 	ldmdapl	r3!, {r9}
 170:	04000000 	streq	r0, [r0], #-0
 174:	00000048 	andeq	r0, r0, r8, asr #32
 178:	2d070402 	cfstrscs	mvf0, [r7, #-8]
 17c:	02000000 	andeq	r0, r0, #0
 180:	00000508 	andeq	r0, r0, r8, lsl #10
 184:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 188:	00002807 	andeq	r2, r0, r7, lsl #16
 18c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
 190:	0000011b 	andeq	r0, r0, fp, lsl r1
 194:	5f040802 	svcpl	0x00040802
 198:	05000000 	streq	r0, [r0, #-0]
 19c:	0000016a 	andeq	r0, r0, sl, ror #2
 1a0:	00480801 	subeq	r0, r8, r1, lsl #16
 1a4:	01010000 	mrseq	r0, (UNDEF: 1)
 1a8:	00018605 	andeq	r8, r1, r5, lsl #12
 1ac:	48140100 	ldmdami	r4, {r8}
 1b0:	01000000 	mrseq	r0, (UNDEF: 0)
 1b4:	015e0501 	cmpeq	lr, r1, lsl #10
 1b8:	15010000 	strne	r0, [r1, #-0]
 1bc:	00000048 	andeq	r0, r0, r8, asr #32
 1c0:	bc050101 	stflts	f0, [r5], {1}
 1c4:	01000001 	tsteq	r0, r1
 1c8:	00004816 	andeq	r4, r0, r6, lsl r8
 1cc:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1d0:	000001b1 			; <UNDEFINED> instruction: 0x000001b1
 1d4:	00481701 	subeq	r1, r8, r1, lsl #14
 1d8:	01010000 	mrseq	r0, (UNDEF: 1)
 1dc:	00019005 	andeq	r9, r1, r5
 1e0:	48180100 	ldmdami	r8, {r8}
 1e4:	01000000 	mrseq	r0, (UNDEF: 0)
 1e8:	00530601 	subseq	r0, r3, r1, lsl #12
 1ec:	00d90000 	sbcseq	r0, r9, r0
 1f0:	de070000 	cdple	0, 0, cr0, cr7, cr0, {0}
 1f4:	13000000 	movwne	r0, #0
 1f8:	00c90400 	sbceq	r0, r9, r0, lsl #8
 1fc:	04020000 	streq	r0, [r2], #-0
 200:	00003207 	andeq	r3, r0, r7, lsl #4
 204:	01460800 	cmpeq	r6, r0, lsl #16
 208:	32010000 	andcc	r0, r1, #0
 20c:	000000d9 	ldrdeq	r0, [r0], -r9
 210:	00030501 	andeq	r0, r3, r1, lsl #10
 214:	09080000 	stmdbeq	r8, {}	; <UNPREDICTABLE>
 218:	00014e01 	andeq	r4, r1, r1, lsl #28
 21c:	015f0100 	cmpeq	pc, r0, lsl #2
 220:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
 224:	08000152 	stmdaeq	r0, {r1, r4, r6, r8}
 228:	00000038 	andeq	r0, r0, r8, lsr r0
 22c:	a0010a01 	andge	r0, r1, r1, lsl #20
 230:	01000001 	tsteq	r0, r1
 234:	00c4014a 	sbceq	r0, r4, sl, asr #2
 238:	014c0800 	cmpeq	ip, r0, lsl #16
 23c:	00640800 	rsbeq	r0, r4, r0, lsl #16
 240:	82010000 	andhi	r0, r1, #0
 244:	0b000001 	bleq	250 <vectors-0x7fffdb0>
 248:	00000199 	muleq	r0, r9, r1
 24c:	00484c01 	subeq	r4, r8, r1, lsl #24
 250:	91020000 	mrsls	r0, (UNDEF: 2)
 254:	013a0b68 	teqeq	sl, r8, ror #22
 258:	4d010000 	stcmi	0, cr0, [r1, #-0]
 25c:	00000182 	andeq	r0, r0, r2, lsl #3
 260:	0b749102 	bleq	1d24670 <vectors-0x62db990>
 264:	00000175 	andeq	r0, r0, r5, ror r1
 268:	01824e01 	orreq	r4, r2, r1, lsl #28
 26c:	91020000 	mrsls	r0, (UNDEF: 2)
 270:	00de0c64 	sbcseq	r0, lr, r4, ror #24
 274:	01020800 	tsteq	r2, r0, lsl #16
 278:	016b0800 	cmneq	fp, r0, lsl #16
 27c:	690d0000 	stmdbvs	sp, {}	; <UNPREDICTABLE>
 280:	884f0100 	stmdahi	pc, {r8}^	; <UNPREDICTABLE>
 284:	02000001 	andeq	r0, r0, #1
 288:	0e007091 	mcreq	0, 0, r7, cr0, cr1, {4}
 28c:	08000110 	stmdaeq	r0, {r4, r8}
 290:	0800012e 	stmdaeq	r0, {r1, r2, r3, r5, r8}
 294:	0100690d 	tsteq	r0, sp, lsl #18
 298:	00018856 	andeq	r8, r1, r6, asr r8
 29c:	6c910200 	lfmvs	f0, 4, [r1], {0}
 2a0:	040f0000 	streq	r0, [pc], #-0	; 2a8 <vectors-0x7fffd58>
 2a4:	00000048 	andeq	r0, r0, r8, asr #32
 2a8:	69050410 	stmdbvs	r5, {r4, sl}
 2ac:	0000746e 	andeq	r7, r0, lr, ror #8

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	00340500 	eorseq	r0, r4, r0, lsl #10
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  fc:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 100:	01060000 	mrseq	r0, (UNDEF: 6)
 104:	01134901 	tsteq	r3, r1, lsl #18
 108:	07000013 	smladeq	r0, r3, r0, r0
 10c:	13490021 	movtne	r0, #36897	; 0x9021
 110:	00000b2f 	andeq	r0, r0, pc, lsr #22
 114:	03003408 	movweq	r3, #1032	; 0x408
 118:	3b0b3a0e 	blcc	2ce958 <vectors-0x7d316a8>
 11c:	3f13490b 	svccc	0x0013490b
 120:	000a020c 	andeq	r0, sl, ip, lsl #4
 124:	002e0900 	eoreq	r0, lr, r0, lsl #18
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors-0x713d1cc>
 148:	01110c27 	tsteq	r1, r7, lsr #24
 14c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 150:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 154:	0b000013 	bleq	1a8 <vectors-0x7fffe58>
 158:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 15c:	0b3b0b3a 	bleq	ec2e4c <vectors-0x713d1b4>
 160:	0a021349 	beq	84e8c <vectors-0x7f7b174>
 164:	0b0c0000 	bleq	30016c <vectors-0x7cffe94>
 168:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 16c:	00130101 	andseq	r0, r3, r1, lsl #2
 170:	00340d00 	eorseq	r0, r4, r0, lsl #26
 174:	0b3a0803 	bleq	e82188 <vectors-0x717de78>
 178:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 17c:	00000a02 	andeq	r0, r0, r2, lsl #20
 180:	11010b0e 	tstne	r1, lr, lsl #22
 184:	00011201 	andeq	r1, r1, r1, lsl #4
 188:	000f0f00 	andeq	r0, pc, r0, lsl #30
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	24100000 	ldrcs	r0, [r0], #-0
 194:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 198:	0008030b 	andeq	r0, r8, fp, lsl #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	00000088 	andeq	r0, r0, r8, lsl #1
  3c:	0000008a 	andeq	r0, r0, sl, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008a 	andeq	r0, r0, sl, lsl #1
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	0000008c 	andeq	r0, r0, ip, lsl #1
  54:	0000008e 	andeq	r0, r0, lr, lsl #1
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	00000088 	andeq	r0, r0, r8, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01200002 			; <UNDEFINED> instruction: 0x01200002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	0000008e 	andeq	r0, r0, lr, lsl #1
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c903 	tsteq	r0, r3, lsl #18
  b4:	2f59213d 	svccs	0x0059213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	002f0304 	eoreq	r0, pc, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	65760065 	ldrbvs	r0, [r6, #-101]!	; 0xffffff9b
 148:	726f7463 	rsbvc	r7, pc, #1660944384	; 0x63000000
 14c:	65440073 	strbvs	r0, [r4, #-115]	; 0xffffff8d
 150:	6c617566 	cfstr64vs	mvdx7, [r1], #-408	; 0xfffffe68
 154:	61685f74 	smcvs	34292	; 0x85f4
 158:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 15c:	535f0072 	cmppl	pc, #114	; 0x72
 160:	54524154 	ldrbpl	r4, [r2], #-340	; 0xfffffeac
 164:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 168:	535f0041 	cmppl	pc, #65	; 0x41
 16c:	4b434154 	blmi	10d06c4 <vectors-0x6f2f93c>
 170:	504f545f 	subpl	r5, pc, pc, asr r4	; <UNPREDICTABLE>
 174:	74505f00 	ldrbvc	r5, [r0], #-3840	; 0xfffff100
 178:	65445f72 	strbvs	r5, [r4, #-3954]	; 0xfffff08e
 17c:	6e697473 	mcrvs	4, 3, r7, cr9, cr3, {3}
 180:	6f697461 	svcvs	0x00697461
 184:	455f006e 	ldrbmi	r0, [pc, #-110]	; 11e <vectors-0x7fffee2>
 188:	545f444e 	ldrbpl	r4, [pc], #-1102	; 190 <vectors-0x7fffe70>
 18c:	00545845 	subseq	r5, r4, r5, asr #16
 190:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 194:	5353425f 	cmppl	r3, #-268435451	; 0xf0000005
 198:	49535f00 	ldmdbmi	r3, {r8, r9, sl, fp, ip, lr}^
 19c:	005f455a 	subseq	r4, pc, sl, asr r5	; <UNPREDICTABLE>
 1a0:	7365725f 	cmnvc	r5, #-268435451	; 0xf0000005
 1a4:	73007465 	movwvc	r7, #1125	; 0x465
 1a8:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 1ac:	632e7075 			; <UNDEFINED> instruction: 0x632e7075
 1b0:	54535f00 	ldrbpl	r5, [r3], #-3840	; 0xfffff100
 1b4:	5f545241 	svcpl	0x00545241
 1b8:	00535342 	subseq	r5, r3, r2, asr #6
 1bc:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 1c0:	5441445f 	strbpl	r4, [r1], #-1119	; 0xfffffba1
 1c4:	Address 0x00000000000001c4 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	00000088 	andeq	r0, r0, r8, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	0800014c 	stmdaeq	r0, {r2, r3, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001004 	andcs	r1, r0, r4
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800000c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000010:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000014:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000020:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800002c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000030:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000034:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000038:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800003c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000040:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000044:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000048:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800004c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1b      	ldr	r2, [pc, #108]	; (800013c <_reset+0x78>)
 80000ce:	4b1c      	ldr	r3, [pc, #112]	; (8000140 <_reset+0x7c>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	607b      	str	r3, [r7, #4]
 80000d4:	4b1b      	ldr	r3, [pc, #108]	; (8000144 <_reset+0x80>)
 80000d6:	617b      	str	r3, [r7, #20]
 80000d8:	4b19      	ldr	r3, [pc, #100]	; (8000140 <_reset+0x7c>)
 80000da:	613b      	str	r3, [r7, #16]
 80000dc:	2300      	movs	r3, #0
 80000de:	60fb      	str	r3, [r7, #12]
 80000e0:	e00c      	b.n	80000fc <_reset+0x38>
 80000e2:	697b      	ldr	r3, [r7, #20]
 80000e4:	781a      	ldrb	r2, [r3, #0]
 80000e6:	693b      	ldr	r3, [r7, #16]
 80000e8:	701a      	strb	r2, [r3, #0]
 80000ea:	693b      	ldr	r3, [r7, #16]
 80000ec:	3301      	adds	r3, #1
 80000ee:	613b      	str	r3, [r7, #16]
 80000f0:	697b      	ldr	r3, [r7, #20]
 80000f2:	3301      	adds	r3, #1
 80000f4:	617b      	str	r3, [r7, #20]
 80000f6:	68fb      	ldr	r3, [r7, #12]
 80000f8:	3301      	adds	r3, #1
 80000fa:	60fb      	str	r3, [r7, #12]
 80000fc:	68fb      	ldr	r3, [r7, #12]
 80000fe:	687a      	ldr	r2, [r7, #4]
 8000100:	429a      	cmp	r2, r3
 8000102:	d8ee      	bhi.n	80000e2 <_reset+0x1e>
 8000104:	4a10      	ldr	r2, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	4b11      	ldr	r3, [pc, #68]	; (800014c <_reset+0x88>)
 8000108:	1ad3      	subs	r3, r2, r3
 800010a:	109b      	asrs	r3, r3, #2
 800010c:	607b      	str	r3, [r7, #4]
 800010e:	4b0f      	ldr	r3, [pc, #60]	; (800014c <_reset+0x88>)
 8000110:	613b      	str	r3, [r7, #16]
 8000112:	2300      	movs	r3, #0
 8000114:	60bb      	str	r3, [r7, #8]
 8000116:	e008      	b.n	800012a <_reset+0x66>
 8000118:	693b      	ldr	r3, [r7, #16]
 800011a:	2200      	movs	r2, #0
 800011c:	701a      	strb	r2, [r3, #0]
 800011e:	693b      	ldr	r3, [r7, #16]
 8000120:	3301      	adds	r3, #1
 8000122:	613b      	str	r3, [r7, #16]
 8000124:	68bb      	ldr	r3, [r7, #8]
 8000126:	3301      	adds	r3, #1
 8000128:	60bb      	str	r3, [r7, #8]
 800012a:	68bb      	ldr	r3, [r7, #8]
 800012c:	687a      	ldr	r2, [r7, #4]
 800012e:	429a      	cmp	r2, r3
 8000130:	d8f2      	bhi.n	8000118 <_reset+0x54>
 8000132:	b662      	cpsie	i
 8000134:	f7ff ff8c 	bl	8000050 <main>
 8000138:	e7fe      	b.n	8000138 <_reset+0x74>
 800013a:	bf00      	nop
 800013c:	20000004 	andcs	r0, r0, r4
 8000140:	20000000 	andcs	r0, r0, r0
 8000144:	08000158 	stmdaeq	r0, {r3, r4, r6, r8}
 8000148:	20000004 	andcs	r0, r0, r4
 800014c:	20000004 	andcs	r0, r0, r4

08000150 <Defualt_handler>:
 8000150:	b480      	push	{r7}
 8000152:	af00      	add	r7, sp, #0
 8000154:	e7fe      	b.n	8000154 <Defualt_handler+0x4>
 8000156:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .bss:

20000004 <_END_BSS>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	0000011c 	andeq	r0, r0, ip, lsl r1
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006600 	andeq	r6, r0, r0, lsl #12
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	01270502 			; <UNDEFINED> instruction: 0x01270502
  38:	02020000 	andeq	r0, r2, #0
  3c:	00009d07 	andeq	r9, r0, r7, lsl #26
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	0000011b 	andeq	r0, r0, fp, lsl r1
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	31080000 	mrscc	r0, (UNDEF: 8)
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01210900 			; <UNDEFINED> instruction: 0x01210900
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0118011b 	tsteq	r8, fp, lsl r1
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	1d010069 	stcne	0, cr0, [r1, #-420]	; 0xfffffe5c
 110:	00000048 	andeq	r0, r0, r8, asr #32
 114:	00749102 	rsbseq	r9, r4, r2, lsl #2
 118:	6905040d 	stmdbvs	r5, {r0, r2, r3, sl}
 11c:	0000746e 	andeq	r7, r0, lr, ror #8
 120:	00000197 	muleq	r0, r7, r1
 124:	00bf0002 	adcseq	r0, pc, r2
 128:	01040000 	mrseq	r0, (UNDEF: 4)
 12c:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
 130:	0001ad0c 	andeq	sl, r1, ip, lsl #26
 134:	00006600 	andeq	r6, r0, r0, lsl #12
 138:	0000c400 	andeq	ip, r0, r0, lsl #8
 13c:	00015608 	andeq	r5, r1, r8, lsl #12
 140:	00006908 	andeq	r6, r0, r8, lsl #18
 144:	08010200 	stmdaeq	r1, {r9}
 148:	0000004c 	andeq	r0, r0, ip, asr #32
 14c:	4e060102 	adfmis	f0, f6, f2
 150:	03000000 	movweq	r0, #0
 154:	00000146 	andeq	r0, r0, r6, asr #2
 158:	00252f02 	eoreq	r2, r5, r2, lsl #30
 15c:	02020000 	andeq	r0, r2, #0
 160:	00012705 	andeq	r2, r1, r5, lsl #14
 164:	07020200 	streq	r0, [r2, -r0, lsl #4]
 168:	0000009d 	muleq	r0, sp, r0
 16c:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 170:	03000000 	movweq	r0, #0
 174:	0000000e 	andeq	r0, r0, lr
 178:	00633302 	rsbeq	r3, r3, r2, lsl #6
 17c:	53040000 	movwpl	r0, #16384	; 0x4000
 180:	02000000 	andeq	r0, r0, #0
 184:	002d0704 	eoreq	r0, sp, r4, lsl #14
 188:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 18c:	00000005 	andeq	r0, r0, r5
 190:	07080200 	streq	r0, [r8, -r0, lsl #4]
 194:	00000028 	andeq	r0, r0, r8, lsr #32
 198:	1b040402 	blne	1011a8 <vectors-0x7efee58>
 19c:	02000001 	andeq	r0, r0, #1
 1a0:	005f0408 	subseq	r0, pc, r8, lsl #8
 1a4:	70050000 	andvc	r0, r5, r0
 1a8:	01000001 	tsteq	r0, r1
 1ac:	00005308 	andeq	r5, r0, r8, lsl #6
 1b0:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1b4:	0000018c 	andeq	r0, r0, ip, lsl #3
 1b8:	00531401 	subseq	r1, r3, r1, lsl #8
 1bc:	01010000 	mrseq	r0, (UNDEF: 1)
 1c0:	00016405 	andeq	r6, r1, r5, lsl #8
 1c4:	53150100 	tstpl	r5, #0, 2
 1c8:	01000000 	mrseq	r0, (UNDEF: 0)
 1cc:	01c20501 	biceq	r0, r2, r1, lsl #10
 1d0:	16010000 	strne	r0, [r1], -r0
 1d4:	00000053 	andeq	r0, r0, r3, asr r0
 1d8:	b7050101 	strlt	r0, [r5, -r1, lsl #2]
 1dc:	01000001 	tsteq	r0, r1
 1e0:	00005317 	andeq	r5, r0, r7, lsl r3
 1e4:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1e8:	00000196 	muleq	r0, r6, r1
 1ec:	00531801 	subseq	r1, r3, r1, lsl #16
 1f0:	01010000 	mrseq	r0, (UNDEF: 1)
 1f4:	00005e06 	andeq	r5, r0, r6, lsl #28
 1f8:	0000e400 	andeq	lr, r0, r0, lsl #8
 1fc:	00e90700 	rsceq	r0, r9, r0, lsl #14
 200:	00130000 	andseq	r0, r3, r0
 204:	0000d404 	andeq	sp, r0, r4, lsl #8
 208:	07040200 	streq	r0, [r4, -r0, lsl #4]
 20c:	00000032 	andeq	r0, r0, r2, lsr r0
 210:	00014c08 	andeq	r4, r1, r8, lsl #24
 214:	e4320100 	ldrt	r0, [r2], #-256	; 0xffffff00
 218:	01000000 	mrseq	r0, (UNDEF: 0)
 21c:	00000305 	andeq	r0, r0, r5, lsl #6
 220:	01090800 	tsteq	r9, r0, lsl #16
 224:	00000154 	andeq	r0, r0, r4, asr r1
 228:	50015f01 	andpl	r5, r1, r1, lsl #30
 22c:	56080001 	strpl	r0, [r8], -r1
 230:	38080001 	stmdacc	r8, {r0}
 234:	01000000 	mrseq	r0, (UNDEF: 0)
 238:	01a6010a 			; <UNDEFINED> instruction: 0x01a6010a
 23c:	4a010000 	bmi	40244 <vectors-0x7fbfdbc>
 240:	0000c401 	andeq	ip, r0, r1, lsl #8
 244:	00015008 	andeq	r5, r1, r8
 248:	00006408 	andeq	r6, r0, r8, lsl #8
 24c:	018d0100 	orreq	r0, sp, r0, lsl #2
 250:	9f0b0000 	svcls	0x000b0000
 254:	01000001 	tsteq	r0, r1
 258:	0000534c 	andeq	r5, r0, ip, asr #6
 25c:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 260:	00013a0b 	andeq	r3, r1, fp, lsl #20
 264:	8d4d0100 	stfhie	f0, [sp, #-0]
 268:	02000001 	andeq	r0, r0, #1
 26c:	7b0b7491 	blvc	2dd4b8 <vectors-0x7d22b48>
 270:	01000001 	tsteq	r0, r1
 274:	00018d4e 	andeq	r8, r1, lr, asr #26
 278:	70910200 	addsvc	r0, r1, r0, lsl #4
 27c:	0000dc0c 	andeq	sp, r0, ip, lsl #24
 280:	00010408 	andeq	r0, r1, r8, lsl #8
 284:	00017608 	andeq	r7, r1, r8, lsl #12
 288:	00690d00 	rsbeq	r0, r9, r0, lsl #26
 28c:	01934f01 	orrseq	r4, r3, r1, lsl #30
 290:	91020000 	mrsls	r0, (UNDEF: 2)
 294:	120e006c 	andne	r0, lr, #108	; 0x6c
 298:	32080001 	andcc	r0, r8, #1
 29c:	0d080001 	stceq	0, cr0, [r8, #-4]
 2a0:	56010069 	strpl	r0, [r1], -r9, rrx
 2a4:	00000193 	muleq	r0, r3, r1
 2a8:	00689102 	rsbeq	r9, r8, r2, lsl #2
 2ac:	33040f00 	movwcc	r0, #20224	; 0x4f00
 2b0:	10000000 	andne	r0, r0, r0
 2b4:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 2b8:	Address 0x00000000000002b8 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a08 	blcc	2ce8d0 <vectors-0x7d31730>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	0b0b0024 	bleq	2c014c <vectors-0x7d3feb4>
  b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
  bc:	01000000 	mrseq	r0, (UNDEF: 0)
  c0:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
  c4:	0e030b13 	vmoveq.32	d3[0], r0
  c8:	01110e1b 	tsteq	r1, fp, lsl lr
  cc:	06100112 			; <UNDEFINED> instruction: 0x06100112
  d0:	24020000 	strcs	r0, [r2], #-0
  d4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  d8:	000e030b 	andeq	r0, lr, fp, lsl #6
  dc:	00160300 	andseq	r0, r6, r0, lsl #6
  e0:	0b3a0e03 	bleq	e838f4 <vectors-0x717c70c>
  e4:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  e8:	26040000 	strcs	r0, [r4], -r0
  ec:	00134900 	andseq	r4, r3, r0, lsl #18
  f0:	00340500 	eorseq	r0, r4, r0, lsl #10
  f4:	0b3a0e03 	bleq	e83908 <vectors-0x717c6f8>
  f8:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  fc:	0c3c0c3f 	ldceq	12, cr0, [ip], #-252	; 0xffffff04
 100:	01060000 	mrseq	r0, (UNDEF: 6)
 104:	01134901 	tsteq	r3, r1, lsl #18
 108:	07000013 	smladeq	r0, r3, r0, r0
 10c:	13490021 	movtne	r0, #36897	; 0x9021
 110:	00000b2f 	andeq	r0, r0, pc, lsr #22
 114:	03003408 	movweq	r3, #1032	; 0x408
 118:	3b0b3a0e 	blcc	2ce958 <vectors-0x7d316a8>
 11c:	3f13490b 	svccc	0x0013490b
 120:	000a020c 	andeq	r0, sl, ip, lsl #4
 124:	002e0900 	eoreq	r0, lr, r0, lsl #18
 128:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 12c:	0b3b0b3a 	bleq	ec2e1c <vectors-0x713d1e4>
 130:	01110c27 	tsteq	r1, r7, lsr #24
 134:	06400112 			; <UNDEFINED> instruction: 0x06400112
 138:	000c4297 	muleq	ip, r7, r2
 13c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
 140:	0e030c3f 	mcreq	12, 0, r0, cr3, cr15, {1}
 144:	0b3b0b3a 	bleq	ec2e34 <vectors-0x713d1cc>
 148:	01110c27 	tsteq	r1, r7, lsr #24
 14c:	06400112 			; <UNDEFINED> instruction: 0x06400112
 150:	010c4296 			; <UNDEFINED> instruction: 0x010c4296
 154:	0b000013 	bleq	1a8 <vectors-0x7fffe58>
 158:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
 15c:	0b3b0b3a 	bleq	ec2e4c <vectors-0x713d1b4>
 160:	0a021349 	beq	84e8c <vectors-0x7f7b174>
 164:	0b0c0000 	bleq	30016c <vectors-0x7cffe94>
 168:	12011101 	andne	r1, r1, #1073741824	; 0x40000000
 16c:	00130101 	andseq	r0, r3, r1, lsl #2
 170:	00340d00 	eorseq	r0, r4, r0, lsl #26
 174:	0b3a0803 	bleq	e82188 <vectors-0x717de78>
 178:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 17c:	00000a02 	andeq	r0, r0, r2, lsl #20
 180:	11010b0e 	tstne	r1, lr, lsl #22
 184:	00011201 	andeq	r1, r1, r1, lsl #4
 188:	000f0f00 	andeq	r0, pc, r0, lsl #30
 18c:	13490b0b 	movtne	r0, #39691	; 0x9b0b
 190:	24100000 	ldrcs	r0, [r0], #-0
 194:	3e0b0b00 	vmlacc.f64	d0, d11, d0
 198:	0008030b 	andeq	r0, r8, fp, lsl #6
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000008c 	andeq	r0, r0, ip, lsl #1
  3c:	0000008e 	andeq	r0, r0, lr, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008e 	andeq	r0, r0, lr, lsl #1
  48:	00000090 	muleq	r0, r0, r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000090 	muleq	r0, r0, r0
  54:	00000092 	muleq	r0, r2, r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	0000008c 	andeq	r0, r0, ip, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01200002 			; <UNDEFINED> instruction: 0x01200002
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000092 	muleq	r0, r2, r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86683f01 	strbthi	r3, [r8], -r1, lsl #30
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c903 	tsteq	r0, r3, lsl #18
  b4:	2f4b213d 	svccs	0x004b213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	004b0304 	subeq	r0, fp, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402003d 	streq	r0, [r2], #-61	; 0xffffffc3
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	3a450065 	bcc	1140200 <vectors-0x6ebfe00>
  68:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  6c:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  70:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  74:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  78:	2f534b5f 	svccs	0x00534b5f
  7c:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  80:	2033746e 	eorscs	r7, r3, lr, ror #8
  84:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  88:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  8c:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 14 <vectors-0x7ffffec>
  90:	6f737365 	svcvs	0x00737365
  94:	2f33206e 	svccs	0x0033206e
  98:	3262614c 	rsbcc	r6, r2, #76, 2
  9c:	6f687300 	svcvs	0x00687300
  a0:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  a4:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  a8:	2064656e 	rsbcs	r6, r4, lr, ror #10
  ac:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b0:	20554e47 	subscs	r4, r5, r7, asr #28
  b4:	20313143 	eorscs	r3, r1, r3, asr #2
  b8:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  bc:	30322031 	eorscc	r2, r2, r1, lsr r0
  c0:	36303831 			; <UNDEFINED> instruction: 0x36303831
  c4:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  c8:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  cc:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d0:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  d4:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  d8:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  dc:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e0:	6172622d 	cmnvs	r2, sp, lsr #4
  e4:	2068636e 	rsbcs	r6, r8, lr, ror #6
  e8:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  ec:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f0:	31363220 	teqcc	r6, r0, lsr #4
  f4:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
  f8:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
  fc:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 100:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 104:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 108:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 10c:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 110:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 114:	66726177 			; <UNDEFINED> instruction: 0x66726177
 118:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 11c:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 120:	726f5000 	rsbvc	r5, pc, #0
 124:	73004174 	movwvc	r4, #372	; 0x174
 128:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 12c:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 130:	6c6c6100 	stfvse	f6, [ip], #-0
 134:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 138:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 13c:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 140:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 144:	69750065 	ldmdbvs	r5!, {r0, r2, r5, r6}^
 148:	0038746e 	eorseq	r7, r8, lr, ror #8
 14c:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
 150:	0073726f 	rsbseq	r7, r3, pc, ror #4
 154:	75666544 	strbvc	r6, [r6, #-1348]!	; 0xfffffabc
 158:	5f746c61 	svcpl	0x00746c61
 15c:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
 160:	0072656c 	rsbseq	r6, r2, ip, ror #10
 164:	4154535f 	cmpmi	r4, pc, asr r3
 168:	445f5452 	ldrbmi	r5, [pc], #-1106	; 170 <vectors-0x7fffe90>
 16c:	00415441 	subeq	r5, r1, r1, asr #8
 170:	4154535f 	cmpmi	r4, pc, asr r3
 174:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 17c <vectors-0x7fffe84>
 178:	5f00504f 	svcpl	0x0000504f
 17c:	5f727450 	svcpl	0x00727450
 180:	74736544 	ldrbtvc	r6, [r3], #-1348	; 0xfffffabc
 184:	74616e69 	strbtvc	r6, [r1], #-3689	; 0xfffff197
 188:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 18c:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 190:	5845545f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
 194:	455f0054 	ldrbmi	r0, [pc, #-84]	; 148 <vectors-0x7fffeb8>
 198:	425f444e 	subsmi	r4, pc, #1308622848	; 0x4e000000
 19c:	5f005353 	svcpl	0x00005353
 1a0:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
 1a4:	725f005f 	subsvc	r0, pc, #95	; 0x5f
 1a8:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 1ac:	61747300 	cmnvs	r4, r0, lsl #6
 1b0:	70757472 	rsbsvc	r7, r5, r2, ror r4
 1b4:	5f00632e 	svcpl	0x0000632e
 1b8:	52415453 	subpl	r5, r1, #1392508928	; 0x53000000
 1bc:	53425f54 	movtpl	r5, #12116	; 0x2f54
 1c0:	455f0053 	ldrbmi	r0, [pc, #-83]	; 175 <vectors-0x7fffe8b>
 1c4:	445f444e 	ldrbmi	r4, [pc], #-1102	; 1cc <vectors-0x7fffe34>
 1c8:	00415441 	subeq	r5, r1, r1, asr #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	08000150 	stmdaeq	r0, {r4, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001010 	andcs	r1, r0, r0, lsl r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800000c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000010:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000014:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000020:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800002c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000030:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000034:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000038:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800003c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000040:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000044:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000048:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800004c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1b      	ldr	r2, [pc, #108]	; (800013c <_reset+0x78>)
 80000ce:	4b1c      	ldr	r3, [pc, #112]	; (8000140 <_reset+0x7c>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	607b      	str	r3, [r7, #4]
 80000d4:	4b1b      	ldr	r3, [pc, #108]	; (8000144 <_reset+0x80>)
 80000d6:	617b      	str	r3, [r7, #20]
 80000d8:	4b19      	ldr	r3, [pc, #100]	; (8000140 <_reset+0x7c>)
 80000da:	613b      	str	r3, [r7, #16]
 80000dc:	2300      	movs	r3, #0
 80000de:	60fb      	str	r3, [r7, #12]
 80000e0:	e00c      	b.n	80000fc <_reset+0x38>
 80000e2:	697b      	ldr	r3, [r7, #20]
 80000e4:	781a      	ldrb	r2, [r3, #0]
 80000e6:	693b      	ldr	r3, [r7, #16]
 80000e8:	701a      	strb	r2, [r3, #0]
 80000ea:	693b      	ldr	r3, [r7, #16]
 80000ec:	3301      	adds	r3, #1
 80000ee:	613b      	str	r3, [r7, #16]
 80000f0:	697b      	ldr	r3, [r7, #20]
 80000f2:	3301      	adds	r3, #1
 80000f4:	617b      	str	r3, [r7, #20]
 80000f6:	68fb      	ldr	r3, [r7, #12]
 80000f8:	3301      	adds	r3, #1
 80000fa:	60fb      	str	r3, [r7, #12]
 80000fc:	68fb      	ldr	r3, [r7, #12]
 80000fe:	687a      	ldr	r2, [r7, #4]
 8000100:	429a      	cmp	r2, r3
 8000102:	d8ee      	bhi.n	80000e2 <_reset+0x1e>
 8000104:	4a10      	ldr	r2, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	4b11      	ldr	r3, [pc, #68]	; (800014c <_reset+0x88>)
 8000108:	1ad3      	subs	r3, r2, r3
 800010a:	109b      	asrs	r3, r3, #2
 800010c:	607b      	str	r3, [r7, #4]
 800010e:	4b0f      	ldr	r3, [pc, #60]	; (800014c <_reset+0x88>)
 8000110:	613b      	str	r3, [r7, #16]
 8000112:	2300      	movs	r3, #0
 8000114:	60bb      	str	r3, [r7, #8]
 8000116:	e008      	b.n	800012a <_reset+0x66>
 8000118:	693b      	ldr	r3, [r7, #16]
 800011a:	2200      	movs	r2, #0
 800011c:	701a      	strb	r2, [r3, #0]
 800011e:	693b      	ldr	r3, [r7, #16]
 8000120:	3301      	adds	r3, #1
 8000122:	613b      	str	r3, [r7, #16]
 8000124:	68bb      	ldr	r3, [r7, #8]
 8000126:	3301      	adds	r3, #1
 8000128:	60bb      	str	r3, [r7, #8]
 800012a:	68bb      	ldr	r3, [r7, #8]
 800012c:	687a      	ldr	r2, [r7, #4]
 800012e:	429a      	cmp	r2, r3
 8000130:	d8f2      	bhi.n	8000118 <_reset+0x54>
 8000132:	b662      	cpsie	i
 8000134:	f7ff ff8c 	bl	8000050 <main>
 8000138:	e7fe      	b.n	8000138 <_reset+0x74>
 800013a:	bf00      	nop
 800013c:	20000004 	andcs	r0, r0, r4
 8000140:	20000000 	andcs	r0, r0, r0
 8000144:	08000158 	stmdaeq	r0, {r3, r4, r6, r8}
 8000148:	20000010 	andcs	r0, r0, r0, lsl r0
 800014c:	20000004 	andcs	r0, r0, r4

08000150 <Defualt_handler>:
 8000150:	b480      	push	{r7}
 8000152:	af00      	add	r7, sp, #0
 8000154:	e7fe      	b.n	8000154 <Defualt_handler+0x4>
 8000156:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .bss:

20000004 <_START_BSS>:
	...

20000010 <_END_BSS>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000144 	andeq	r0, r0, r4, asr #2
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b8 	strheq	r0, [r0], -r8
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006e00 	andeq	r6, r0, r0, lsl #28
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	012f0502 			; <UNDEFINED> instruction: 0x012f0502
  38:	02020000 	andeq	r0, r2, #0
  3c:	0000a507 	andeq	sl, r0, r7, lsl #10
  40:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
  70:	00000123 	andeq	r0, r0, r3, lsr #2
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	39080000 	stmdbcc	r8, {}	; <UNPREDICTABLE>
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01290900 			; <UNDEFINED> instruction: 0x01290900
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0129011b 			; <UNDEFINED> instruction: 0x0129011b
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	29010000 	stmdbcs	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	00000066 	andeq	r0, r0, r6, rrx
 110:	01301d01 	teqeq	r0, r1, lsl #26
 114:	03050000 	movweq	r0, #20480	; 0x5000
 118:	20000004 	andcs	r0, r0, r4
 11c:	0100690d 	tsteq	r0, sp, lsl #18
 120:	0000481e 	andeq	r4, r0, lr, lsl r8
 124:	74910200 	ldrvc	r0, [r1], #512	; 0x200
 128:	05040e00 	streq	r0, [r4, #-3584]	; 0xfffff200
 12c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 130:	0000480f 	andeq	r4, r0, pc, lsl #16
 134:	00014000 	andeq	r4, r1, r0
 138:	01401000 	mrseq	r1, (UNDEF: 64)
 13c:	00020000 	andeq	r0, r2, r0
 140:	32070402 	andcc	r0, r7, #33554432	; 0x2000000
 144:	00000000 	andeq	r0, r0, r0
 148:	00000197 	muleq	r0, r7, r1
 14c:	00e00002 	rsceq	r0, r0, r2
 150:	01040000 	mrseq	r0, (UNDEF: 4)
 154:	000000b8 	strheq	r0, [r0], -r8
 158:	0001b50c 	andeq	fp, r1, ip, lsl #10
 15c:	00006e00 	andeq	r6, r0, r0, lsl #28
 160:	0000c400 	andeq	ip, r0, r0, lsl #8
 164:	00015608 	andeq	r5, r1, r8, lsl #12
 168:	00006908 	andeq	r6, r0, r8, lsl #18
 16c:	08010200 	stmdaeq	r1, {r9}
 170:	0000004c 	andeq	r0, r0, ip, asr #32
 174:	4e060102 	adfmis	f0, f6, f2
 178:	03000000 	movweq	r0, #0
 17c:	0000014e 	andeq	r0, r0, lr, asr #2
 180:	00252f02 	eoreq	r2, r5, r2, lsl #30
 184:	02020000 	andeq	r0, r2, #0
 188:	00012f05 	andeq	r2, r1, r5, lsl #30
 18c:	07020200 	streq	r0, [r2, -r0, lsl #4]
 190:	000000a5 	andeq	r0, r0, r5, lsr #1
 194:	05050402 	streq	r0, [r5, #-1026]	; 0xfffffbfe
 198:	03000000 	movweq	r0, #0
 19c:	0000000e 	andeq	r0, r0, lr
 1a0:	00633302 	rsbeq	r3, r3, r2, lsl #6
 1a4:	53040000 	movwpl	r0, #16384	; 0x4000
 1a8:	02000000 	andeq	r0, r0, #0
 1ac:	002d0704 	eoreq	r0, sp, r4, lsl #14
 1b0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 1b4:	00000005 	andeq	r0, r0, r5
 1b8:	07080200 	streq	r0, [r8, -r0, lsl #4]
 1bc:	00000028 	andeq	r0, r0, r8, lsr #32
 1c0:	23040402 	movwcs	r0, #17410	; 0x4402
 1c4:	02000001 	andeq	r0, r0, #1
 1c8:	005f0408 	subseq	r0, pc, r8, lsl #8
 1cc:	78050000 	stmdavc	r5, {}	; <UNPREDICTABLE>
 1d0:	01000001 	tsteq	r0, r1
 1d4:	00005308 	andeq	r5, r0, r8, lsl #6
 1d8:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 1dc:	00000194 	muleq	r0, r4, r1
 1e0:	00531401 	subseq	r1, r3, r1, lsl #8
 1e4:	01010000 	mrseq	r0, (UNDEF: 1)
 1e8:	00016c05 	andeq	r6, r1, r5, lsl #24
 1ec:	53150100 	tstpl	r5, #0, 2
 1f0:	01000000 	mrseq	r0, (UNDEF: 0)
 1f4:	01ca0501 	biceq	r0, sl, r1, lsl #10
 1f8:	16010000 	strne	r0, [r1], -r0
 1fc:	00000053 	andeq	r0, r0, r3, asr r0
 200:	bf050101 	svclt	0x00050101
 204:	01000001 	tsteq	r0, r1
 208:	00005317 	andeq	r5, r0, r7, lsl r3
 20c:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
 210:	0000019e 	muleq	r0, lr, r1
 214:	00531801 	subseq	r1, r3, r1, lsl #16
 218:	01010000 	mrseq	r0, (UNDEF: 1)
 21c:	00005e06 	andeq	r5, r0, r6, lsl #28
 220:	0000e400 	andeq	lr, r0, r0, lsl #8
 224:	00e90700 	rsceq	r0, r9, r0, lsl #14
 228:	00130000 	andseq	r0, r3, r0
 22c:	0000d404 	andeq	sp, r0, r4, lsl #8
 230:	07040200 	streq	r0, [r4, -r0, lsl #4]
 234:	00000032 	andeq	r0, r0, r2, lsr r0
 238:	00015408 	andeq	r5, r1, r8, lsl #8
 23c:	e4320100 	ldrt	r0, [r2], #-256	; 0xffffff00
 240:	01000000 	mrseq	r0, (UNDEF: 0)
 244:	00000305 	andeq	r0, r0, r5, lsl #6
 248:	01090800 	tsteq	r9, r0, lsl #16
 24c:	0000015c 	andeq	r0, r0, ip, asr r1
 250:	50015f01 	andpl	r5, r1, r1, lsl #30
 254:	56080001 	strpl	r0, [r8], -r1
 258:	38080001 	stmdacc	r8, {r0}
 25c:	01000000 	mrseq	r0, (UNDEF: 0)
 260:	01ae010a 			; <UNDEFINED> instruction: 0x01ae010a
 264:	4a010000 	bmi	4026c <vectors-0x7fbfd94>
 268:	0000c401 	andeq	ip, r0, r1, lsl #8
 26c:	00015008 	andeq	r5, r1, r8
 270:	00006408 	andeq	r6, r0, r8, lsl #8
 274:	018d0100 	orreq	r0, sp, r0, lsl #2
 278:	a70b0000 	strge	r0, [fp, -r0]
 27c:	01000001 	tsteq	r0, r1
 280:	0000534c 	andeq	r5, r0, ip, asr #6
 284:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 288:	0001420b 	andeq	r4, r1, fp, lsl #4
 28c:	8d4d0100 	stfhie	f0, [sp, #-0]
 290:	02000001 	andeq	r0, r0, #1
 294:	830b7491 	movwhi	r7, #46225	; 0xb491
 298:	01000001 	tsteq	r0, r1
 29c:	00018d4e 	andeq	r8, r1, lr, asr #26
 2a0:	70910200 	addsvc	r0, r1, r0, lsl #4
 2a4:	0000dc0c 	andeq	sp, r0, ip, lsl #24
 2a8:	00010408 	andeq	r0, r1, r8, lsl #8
 2ac:	00017608 	andeq	r7, r1, r8, lsl #12
 2b0:	00690d00 	rsbeq	r0, r9, r0, lsl #26
 2b4:	01934f01 	orrseq	r4, r3, r1, lsl #30
 2b8:	91020000 	mrsls	r0, (UNDEF: 2)
 2bc:	120e006c 	andne	r0, lr, #108	; 0x6c
 2c0:	32080001 	andcc	r0, r8, #1
 2c4:	0d080001 	stceq	0, cr0, [r8, #-4]
 2c8:	56010069 	strpl	r0, [r1], -r9, rrx
 2cc:	00000193 	muleq	r0, r3, r1
 2d0:	00689102 	rsbeq	r9, r8, r2, lsl #2
 2d4:	33040f00 	movwcc	r0, #20224	; 0x4f00
 2d8:	10000000 	andne	r0, r0, r0
 2dc:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 2e0:	Address 0x00000000000002e0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a0e 	blcc	2ce8e8 <vectors-0x7d31718>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	08030034 	stmdaeq	r3, {r2, r4, r5}
  b8:	0b3b0b3a 	bleq	ec2da8 <vectors-0x713d258>
  bc:	0a021349 	beq	84de8 <vectors-0x7f7b218>
  c0:	240e0000 	strcs	r0, [lr], #-0
  c4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  c8:	0008030b 	andeq	r0, r8, fp, lsl #6
  cc:	01010f00 	tsteq	r1, r0, lsl #30
  d0:	13011349 	movwne	r1, #4937	; 0x1349
  d4:	21100000 	tstcs	r0, r0
  d8:	2f134900 	svccs	0x00134900
  dc:	0000000b 	andeq	r0, r0, fp
  e0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
  e4:	030b130e 	movweq	r1, #45838	; 0xb30e
  e8:	110e1b0e 	tstne	lr, lr, lsl #22
  ec:	10011201 	andne	r1, r1, r1, lsl #4
  f0:	02000006 	andeq	r0, r0, #6
  f4:	0b0b0024 	bleq	2c018c <vectors-0x7d3fe74>
  f8:	0e030b3e 	vmoveq.16	d3[0], r0
  fc:	16030000 	strne	r0, [r3], -r0
 100:	3a0e0300 	bcc	380d08 <vectors-0x7c7f2f8>
 104:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 108:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
 10c:	13490026 	movtne	r0, #36902	; 0x9026
 110:	34050000 	strcc	r0, [r5], #-0
 114:	3a0e0300 	bcc	380d1c <vectors-0x7c7f2e4>
 118:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 11c:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 120:	0600000c 	streq	r0, [r0], -ip
 124:	13490101 	movtne	r0, #37121	; 0x9101
 128:	00001301 	andeq	r1, r0, r1, lsl #6
 12c:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
 130:	000b2f13 	andeq	r2, fp, r3, lsl pc
 134:	00340800 	eorseq	r0, r4, r0, lsl #16
 138:	0b3a0e03 	bleq	e8394c <vectors-0x717c6b4>
 13c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 140:	0a020c3f 	beq	83244 <vectors-0x7f7cdbc>
 144:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 148:	030c3f00 	movweq	r3, #52992	; 0xcf00
 14c:	3b0b3a0e 	blcc	2ce98c <vectors-0x7d31674>
 150:	110c270b 	tstne	ip, fp, lsl #14
 154:	40011201 	andmi	r1, r1, r1, lsl #4
 158:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 15c:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 160:	030c3f01 	movweq	r3, #52993	; 0xcf01
 164:	3b0b3a0e 	blcc	2ce9a4 <vectors-0x7d3165c>
 168:	110c270b 	tstne	ip, fp, lsl #14
 16c:	40011201 	andmi	r1, r1, r1, lsl #4
 170:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 174:	00001301 	andeq	r1, r0, r1, lsl #6
 178:	0300340b 	movweq	r3, #1035	; 0x40b
 17c:	3b0b3a0e 	blcc	2ce9bc <vectors-0x7d31644>
 180:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 184:	0c00000a 	stceq	0, cr0, [r0], {10}
 188:	0111010b 	tsteq	r1, fp, lsl #2
 18c:	13010112 	movwne	r0, #4370	; 0x1112
 190:	340d0000 	strcc	r0, [sp], #-0
 194:	3a080300 	bcc	200d9c <vectors-0x7dff264>
 198:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	000a0213 	andeq	r0, sl, r3, lsl r2
 1a0:	010b0e00 	tsteq	fp, r0, lsl #28
 1a4:	01120111 	tsteq	r2, r1, lsl r1
 1a8:	0f0f0000 	svceq	0x000f0000
 1ac:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 1b0:	10000013 	andne	r0, r0, r3, lsl r0
 1b4:	0b0b0024 	bleq	2c024c <vectors-0x7d3fdb4>
 1b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 1bc:	Address 0x00000000000001bc is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000008c 	andeq	r0, r0, ip, lsl #1
  3c:	0000008e 	andeq	r0, r0, lr, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008e 	andeq	r0, r0, lr, lsl #1
  48:	00000090 	muleq	r0, r0, r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000090 	muleq	r0, r0, r0
  54:	00000092 	muleq	r0, r2, r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	0000008c 	andeq	r0, r0, ip, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01480002 	cmpeq	r8, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000092 	muleq	r0, r2, r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86684001 	strbthi	r4, [r8], -r1
  48:	04020068 	streq	r0, [r2], #-104	; 0xffffff98
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0xffffffc4
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xfffff3b0
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c903 	tsteq	r0, r3, lsl #18
  b4:	2f4b213d 	svccs	0x004b213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	004b0304 	subeq	r0, fp, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0xffffffc7
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402003d 	streq	r0, [r2], #-61	; 0xffffffc3
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xffffff43
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x00000000000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xfffff199
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xfffff197
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	73620065 	cmnvc	r2, #101	; 0x65
  68:	61765f73 	cmnvs	r6, r3, ror pc
  6c:	3a450072 	bcc	114023c <vectors-0x6ebfdc4>
  70:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  74:	65646465 	strbvs	r6, [r4, #-1125]!	; 0xfffffb9b
  78:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  7c:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  80:	2f534b5f 	svccs	0x00534b5f
  84:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  88:	2033746e 	eorscs	r7, r3, lr, ror #8
  8c:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xfffff2bb
  90:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  94:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 1c <vectors-0x7ffffe4>
  98:	6f737365 	svcvs	0x00737365
  9c:	2f33206e 	svccs	0x0033206e
  a0:	3262614c 	rsbcc	r6, r2, #76, 2
  a4:	6f687300 	svcvs	0x00687300
  a8:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  ac:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  b0:	2064656e 	rsbcs	r6, r4, lr, ror #10
  b4:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b8:	20554e47 	subscs	r4, r5, r7, asr #28
  bc:	20313143 	eorscs	r3, r1, r3, asr #2
  c0:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  c4:	30322031 	eorscc	r2, r2, r1, lsr r0
  c8:	36303831 			; <UNDEFINED> instruction: 0x36303831
  cc:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  d0:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0xfffffa8e
  d4:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d8:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  dc:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  e0:	64646562 	strbtvs	r6, [r4], #-1378	; 0xfffffa9e
  e4:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e8:	6172622d 	cmnvs	r2, sp, lsr #4
  ec:	2068636e 	rsbcs	r6, r8, lr, ror #6
  f0:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  f4:	6e6f6973 			; <UNDEFINED> instruction: 0x6e6f6973
  f8:	31363220 	teqcc	r6, r0, lsr #4
  fc:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
 100:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 104:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 108:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0xfffffd91
 10c:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 110:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xfffff2e0
 114:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 118:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xfffff2e0
 11c:	66726177 			; <UNDEFINED> instruction: 0x66726177
 120:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 124:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xfffff094
 128:	726f5000 	rsbvc	r5, pc, #0
 12c:	73004174 	movwvc	r4, #372	; 0x174
 130:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 134:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 138:	6c6c6100 	stfvse	f6, [ip], #-0
 13c:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 140:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 144:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 148:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 14c:	69750065 	ldmdbvs	r5!, {r0, r2, r5, r6}^
 150:	0038746e 	eorseq	r7, r8, lr, ror #8
 154:	74636576 	strbtvc	r6, [r3], #-1398	; 0xfffffa8a
 158:	0073726f 	rsbseq	r7, r3, pc, ror #4
 15c:	75666544 	strbvc	r6, [r6, #-1348]!	; 0xfffffabc
 160:	5f746c61 	svcpl	0x00746c61
 164:	646e6168 	strbtvs	r6, [lr], #-360	; 0xfffffe98
 168:	0072656c 	rsbseq	r6, r2, ip, ror #10
 16c:	4154535f 	cmpmi	r4, pc, asr r3
 170:	445f5452 	ldrbmi	r5, [pc], #-1106	; 178 <vectors-0x7fffe88>
 174:	00415441 	subeq	r5, r1, r1, asr #8
 178:	4154535f 	cmpmi	r4, pc, asr r3
 17c:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 184 <vectors-0x7fffe7c>
 180:	5f00504f 	svcpl	0x0000504f
 184:	5f727450 	svcpl	0x00727450
 188:	74736544 	ldrbtvc	r6, [r3], #-1348	; 0xfffffabc
 18c:	74616e69 	strbtvc	r6, [r1], #-3689	; 0xfffff197
 190:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 194:	444e455f 	strbmi	r4, [lr], #-1375	; 0xfffffaa1
 198:	5845545f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
 19c:	455f0054 	ldrbmi	r0, [pc, #-84]	; 150 <vectors-0x7fffeb0>
 1a0:	425f444e 	subsmi	r4, pc, #1308622848	; 0x4e000000
 1a4:	5f005353 	svcpl	0x00005353
 1a8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0xfffff6ad
 1ac:	725f005f 	subsvc	r0, pc, #95	; 0x5f
 1b0:	74657365 	strbtvc	r7, [r5], #-869	; 0xfffffc9b
 1b4:	61747300 	cmnvs	r4, r0, lsl #6
 1b8:	70757472 	rsbsvc	r7, r5, r2, ror r4
 1bc:	5f00632e 	svcpl	0x0000632e
 1c0:	52415453 	subpl	r5, r1, #1392508928	; 0x53000000
 1c4:	53425f54 	movtpl	r5, #12116	; 0x2f54
 1c8:	455f0053 	ldrbmi	r0, [pc, #-83]	; 17d <vectors-0x7fffe83>
 1cc:	445f444e 	ldrbmi	r4, [pc], #-1102	; 1d4 <vectors-0x7fffe2c>
 1d0:	00415441 	subeq	r5, r1, r1, asr #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xfffff29b
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0xfffffb9c
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0xffffff98
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x0000000000000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0xfffffdfe
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	08000150 	stmdaeq	r0, {r4, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]

Ehab_Lab2.elf:     file format elf32-littlearm


Disassembly of section .text:

08000000 <vectors>:
 8000000:	20001010 	andcs	r1, r0, r0, lsl r0
 8000004:	080000c5 	stmdaeq	r0, {r0, r2, r6, r7}
 8000008:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800000c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000010:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000014:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000018:	00000000 	andeq	r0, r0, r0
 800001c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000020:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000024:	00000000 	andeq	r0, r0, r0
 8000028:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800002c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000030:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000034:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000038:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800003c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000040:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000044:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 8000048:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}
 800004c:	08000151 	stmdaeq	r0, {r0, r4, r6, r8}

08000050 <main>:
 8000050:	b480      	push	{r7}
 8000052:	b083      	sub	sp, #12
 8000054:	af00      	add	r7, sp, #0
 8000056:	4b18      	ldr	r3, [pc, #96]	; (80000b8 <main+0x68>)
 8000058:	681b      	ldr	r3, [r3, #0]
 800005a:	4a17      	ldr	r2, [pc, #92]	; (80000b8 <main+0x68>)
 800005c:	f043 0304 	orr.w	r3, r3, #4
 8000060:	6013      	str	r3, [r2, #0]
 8000062:	4b16      	ldr	r3, [pc, #88]	; (80000bc <main+0x6c>)
 8000064:	681b      	ldr	r3, [r3, #0]
 8000066:	f423 0370 	bic.w	r3, r3, #15728640	; 0xf00000
 800006a:	4a14      	ldr	r2, [pc, #80]	; (80000bc <main+0x6c>)
 800006c:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8000070:	6013      	str	r3, [r2, #0]
 8000072:	4b13      	ldr	r3, [pc, #76]	; (80000c0 <main+0x70>)
 8000074:	681a      	ldr	r2, [r3, #0]
 8000076:	8813      	ldrh	r3, [r2, #0]
 8000078:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800007c:	8013      	strh	r3, [r2, #0]
 800007e:	2300      	movs	r3, #0
 8000080:	607b      	str	r3, [r7, #4]
 8000082:	e002      	b.n	800008a <main+0x3a>
 8000084:	687b      	ldr	r3, [r7, #4]
 8000086:	3301      	adds	r3, #1
 8000088:	607b      	str	r3, [r7, #4]
 800008a:	687b      	ldr	r3, [r7, #4]
 800008c:	f241 3287 	movw	r2, #4999	; 0x1387
 8000090:	4293      	cmp	r3, r2
 8000092:	d9f7      	bls.n	8000084 <main+0x34>
 8000094:	4b0a      	ldr	r3, [pc, #40]	; (80000c0 <main+0x70>)
 8000096:	681a      	ldr	r2, [r3, #0]
 8000098:	8813      	ldrh	r3, [r2, #0]
 800009a:	f36f 334d 	bfc	r3, #13, #1
 800009e:	8013      	strh	r3, [r2, #0]
 80000a0:	2300      	movs	r3, #0
 80000a2:	607b      	str	r3, [r7, #4]
 80000a4:	e002      	b.n	80000ac <main+0x5c>
 80000a6:	687b      	ldr	r3, [r7, #4]
 80000a8:	3301      	adds	r3, #1
 80000aa:	607b      	str	r3, [r7, #4]
 80000ac:	687b      	ldr	r3, [r7, #4]
 80000ae:	f241 3287 	movw	r2, #4999	; 0x1387
 80000b2:	4293      	cmp	r3, r2
 80000b4:	d9f7      	bls.n	80000a6 <main+0x56>
 80000b6:	e7dc      	b.n	8000072 <main+0x22>
 80000b8:	40021018 	andmi	r1, r2, r8, lsl r0
 80000bc:	40010804 	andmi	r0, r1, r4, lsl #16
 80000c0:	20000000 	andcs	r0, r0, r0

080000c4 <_reset>:
 80000c4:	b580      	push	{r7, lr}
 80000c6:	b086      	sub	sp, #24
 80000c8:	af00      	add	r7, sp, #0
 80000ca:	b672      	cpsid	i
 80000cc:	4a1b      	ldr	r2, [pc, #108]	; (800013c <_reset+0x78>)
 80000ce:	4b1c      	ldr	r3, [pc, #112]	; (8000140 <_reset+0x7c>)
 80000d0:	1ad3      	subs	r3, r2, r3
 80000d2:	607b      	str	r3, [r7, #4]
 80000d4:	4b1b      	ldr	r3, [pc, #108]	; (8000144 <_reset+0x80>)
 80000d6:	617b      	str	r3, [r7, #20]
 80000d8:	4b19      	ldr	r3, [pc, #100]	; (8000140 <_reset+0x7c>)
 80000da:	613b      	str	r3, [r7, #16]
 80000dc:	2300      	movs	r3, #0
 80000de:	60fb      	str	r3, [r7, #12]
 80000e0:	e00c      	b.n	80000fc <_reset+0x38>
 80000e2:	697b      	ldr	r3, [r7, #20]
 80000e4:	781a      	ldrb	r2, [r3, #0]
 80000e6:	693b      	ldr	r3, [r7, #16]
 80000e8:	701a      	strb	r2, [r3, #0]
 80000ea:	693b      	ldr	r3, [r7, #16]
 80000ec:	3301      	adds	r3, #1
 80000ee:	613b      	str	r3, [r7, #16]
 80000f0:	697b      	ldr	r3, [r7, #20]
 80000f2:	3301      	adds	r3, #1
 80000f4:	617b      	str	r3, [r7, #20]
 80000f6:	68fb      	ldr	r3, [r7, #12]
 80000f8:	3301      	adds	r3, #1
 80000fa:	60fb      	str	r3, [r7, #12]
 80000fc:	68fb      	ldr	r3, [r7, #12]
 80000fe:	687a      	ldr	r2, [r7, #4]
 8000100:	429a      	cmp	r2, r3
 8000102:	d8ee      	bhi.n	80000e2 <_reset+0x1e>
 8000104:	4a10      	ldr	r2, [pc, #64]	; (8000148 <_reset+0x84>)
 8000106:	4b11      	ldr	r3, [pc, #68]	; (800014c <_reset+0x88>)
 8000108:	1ad3      	subs	r3, r2, r3
 800010a:	109b      	asrs	r3, r3, #2
 800010c:	607b      	str	r3, [r7, #4]
 800010e:	4b0f      	ldr	r3, [pc, #60]	; (800014c <_reset+0x88>)
 8000110:	613b      	str	r3, [r7, #16]
 8000112:	2300      	movs	r3, #0
 8000114:	60bb      	str	r3, [r7, #8]
 8000116:	e008      	b.n	800012a <_reset+0x66>
 8000118:	693b      	ldr	r3, [r7, #16]
 800011a:	2200      	movs	r2, #0
 800011c:	701a      	strb	r2, [r3, #0]
 800011e:	693b      	ldr	r3, [r7, #16]
 8000120:	3301      	adds	r3, #1
 8000122:	613b      	str	r3, [r7, #16]
 8000124:	68bb      	ldr	r3, [r7, #8]
 8000126:	3301      	adds	r3, #1
 8000128:	60bb      	str	r3, [r7, #8]
 800012a:	68bb      	ldr	r3, [r7, #8]
 800012c:	687a      	ldr	r2, [r7, #4]
 800012e:	429a      	cmp	r2, r3
 8000130:	d8f2      	bhi.n	8000118 <_reset+0x54>
 8000132:	b662      	cpsie	i
 8000134:	f7ff ff8c 	bl	8000050 <main>
 8000138:	e7fe      	b.n	8000138 <_reset+0x74>
 800013a:	bf00      	nop
 800013c:	20000004 	andcs	r0, r0, r4
 8000140:	20000000 	andcs	r0, r0, r0
 8000144:	08000158 	stmdaeq	r0, {r3, r4, r6, r8}
 8000148:	20000010 	andcs	r0, r0, r0, lsl r0
 800014c:	20000004 	andcs	r0, r0, r4

08000150 <Defualt_handler>:
 8000150:	b480      	push	{r7}
 8000152:	af00      	add	r7, sp, #0
 8000154:	e7fe      	b.n	8000154 <Defualt_handler+0x4>
 8000156:	bf00      	nop

Disassembly of section .data:

20000000 <PortA>:
20000000:	4001080c 	andmi	r0, r1, ip, lsl #16

Disassembly of section .bss:

20000004 <_START_BSS>:
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	00000144 	andeq	r0, r0, r4, asr #2
   4:	00000002 	andeq	r0, r0, r2
   8:	01040000 	mrseq	r0, (UNDEF: 4)
   c:	000000b8 	strheq	r0, [r0], -r8
  10:	0000150c 	andeq	r1, r0, ip, lsl #10
  14:	00006e00 	andeq	r6, r0, r0, lsl #28
  18:	00005000 	andeq	r5, r0, r0
  1c:	0000c408 	andeq	ip, r0, r8, lsl #8
  20:	00000008 	andeq	r0, r0, r8
  24:	08010200 	stmdaeq	r1, {r9}
  28:	0000004c 	andeq	r0, r0, ip, asr #32
  2c:	4e060102 	adfmis	f0, f6, f2
  30:	02000000 	andeq	r0, r0, #0
  34:	012f0502 	teqeq	pc, r2, lsl #10
  38:	02020000 	andeq	r0, r2, #0
  3c:	0000a507 	andeq	sl, r0, r7, lsl #10
  40:	05040200 	streq	r0, [r4, #-512]	; 0x200
  44:	00000005 	andeq	r0, r0, r5
  48:	00000e03 	andeq	r0, r0, r3, lsl #28
  4c:	58330200 	ldmdapl	r3!, {r9}
  50:	04000000 	streq	r0, [r0], #-0
  54:	00000048 	andeq	r0, r0, r8, asr #32
  58:	2d070402 	cfstrscs	mvf0, [r7, #-8]
  5c:	02000000 	andeq	r0, r0, #0
  60:	00000508 	andeq	r0, r0, r8, lsl #10
  64:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
  68:	00002807 	andeq	r2, r0, r7, lsl #16
  6c:	04040200 	streq	r0, [r4], #-512	; 0x200
  70:	00000123 	andeq	r0, r0, r3, lsr #2
  74:	5f040802 	svcpl	0x00040802
  78:	05000000 	streq	r0, [r0, #-0]
  7c:	a6130104 	ldrge	r0, [r3], -r4, lsl #2
  80:	06000000 	streq	r0, [r0], -r0
  84:	0000003f 	andeq	r0, r0, pc, lsr r0
  88:	00531401 	subseq	r1, r3, r1, lsl #8
  8c:	0d040000 	stceq	0, cr0, [r4, #-0]
  90:	00230213 	eoreq	r0, r3, r3, lsl r2
  94:	00002206 	andeq	r2, r0, r6, lsl #4
  98:	53150100 	tstpl	r5, #0, 2
  9c:	04000000 	streq	r0, [r0], #-0
  a0:	23021201 	movwcs	r1, #8705	; 0x2201
  a4:	04070000 	streq	r0, [r7], #-0
  a8:	00c51101 	sbceq	r1, r5, r1, lsl #2
  ac:	39080000 	stmdbcc	r8, {}	; <UNPREDICTABLE>
  b0:	01000001 	tsteq	r0, r1
  b4:	00005312 	andeq	r5, r0, r2, lsl r3
  b8:	00470800 	subeq	r0, r7, r0, lsl #16
  bc:	16010000 	strne	r0, [r1], -r0
  c0:	0000007b 	andeq	r0, r0, fp, ror r0
  c4:	001c0300 	andseq	r0, ip, r0, lsl #6
  c8:	17010000 	strne	r0, [r1, -r0]
  cc:	000000a6 	andeq	r0, r0, r6, lsr #1
  d0:	0000c504 	andeq	ip, r0, r4, lsl #10
  d4:	01290900 	teqeq	r9, r0, lsl #18
  d8:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
  dc:	000000e7 	andeq	r0, r0, r7, ror #1
  e0:	00030501 	andeq	r0, r3, r1, lsl #10
  e4:	0a200000 	beq	8000ec <vectors-0x77fff14>
  e8:	0000d004 	andeq	sp, r0, r4
  ec:	5a010b00 	bpl	42cf4 <vectors-0x7fbd30c>
  f0:	01000000 	mrseq	r0, (UNDEF: 0)
  f4:	0129011b 	teqeq	r9, fp, lsl r1
  f8:	00500000 	subseq	r0, r0, r0
  fc:	00c40800 	sbceq	r0, r4, r0, lsl #16
 100:	00000800 	andeq	r0, r0, r0, lsl #16
 104:	29010000 	stmdbcs	r1, {}	; <UNPREDICTABLE>
 108:	0c000001 	stceq	0, cr0, [r0], {1}
 10c:	00000066 	andeq	r0, r0, r6, rrx
 110:	01301d01 	teqeq	r0, r1, lsl #26
 114:	03050000 	movweq	r0, #20480	; 0x5000
 118:	20000004 	andcs	r0, r0, r4
 11c:	0100690d 	tsteq	r0, sp, lsl #18
 120:	0000481e 	andeq	r4, r0, lr, lsl r8
 124:	74910200 	ldrvc	r0, [r1], #512	; 0x200
 128:	05040e00 	streq	r0, [r4, #-3584]	; 0xe00
 12c:	00746e69 	rsbseq	r6, r4, r9, ror #28
 130:	0000480f 	andeq	r4, r0, pc, lsl #16
 134:	00014000 	andeq	r4, r1, r0
 138:	01401000 	mrseq	r1, (UNDEF: 64)
 13c:	00020000 	andeq	r0, r2, r0
 140:	32070402 	andcc	r0, r7, #33554432	; 0x2000000
 144:	00000000 	andeq	r0, r0, r0
 148:	00000197 	muleq	r0, r7, r1
 14c:	00e00002 	rsceq	r0, r0, r2
 150:	01040000 	mrseq	r0, (UNDEF: 4)
 154:	000000b8 	strheq	r0, [r0], -r8
 158:	0001b50c 	andeq	fp, r1, ip, lsl #10
 15c:	00006e00 	andeq	r6, r0, r0, lsl #28
 160:	0000c400 	andeq	ip, r0, r0, lsl #8
 164:	00015608 	andeq	r5, r1, r8, lsl #12
 168:	00006908 	andeq	r6, r0, r8, lsl #18
 16c:	08010200 	stmdaeq	r1, {r9}
 170:	0000004c 	andeq	r0, r0, ip, asr #32
 174:	4e060102 	adfmis	f0, f6, f2
 178:	03000000 	movweq	r0, #0
 17c:	0000014e 	andeq	r0, r0, lr, asr #2
 180:	00252f02 	eoreq	r2, r5, r2, lsl #30
 184:	02020000 	andeq	r0, r2, #0
 188:	00012f05 	andeq	r2, r1, r5, lsl #30
 18c:	07020200 	streq	r0, [r2, -r0, lsl #4]
 190:	000000a5 	andeq	r0, r0, r5, lsr #1
 194:	05050402 	streq	r0, [r5, #-1026]	; 0x402
 198:	03000000 	movweq	r0, #0
 19c:	0000000e 	andeq	r0, r0, lr
 1a0:	00633302 	rsbeq	r3, r3, r2, lsl #6
 1a4:	53040000 	movwpl	r0, #16384	; 0x4000
 1a8:	02000000 	andeq	r0, r0, #0
 1ac:	002d0704 	eoreq	r0, sp, r4, lsl #14
 1b0:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
 1b4:	00000005 	andeq	r0, r0, r5
 1b8:	07080200 	streq	r0, [r8, -r0, lsl #4]
 1bc:	00000028 	andeq	r0, r0, r8, lsr #32
 1c0:	23040402 	movwcs	r0, #17410	; 0x4402
 1c4:	02000001 	andeq	r0, r0, #1
 1c8:	005f0408 	subseq	r0, pc, r8, lsl #8
 1cc:	78050000 	stmdavc	r5, {}	; <UNPREDICTABLE>
 1d0:	01000001 	tsteq	r0, r1
 1d4:	00005308 	andeq	r5, r0, r8, lsl #6
 1d8:	05010100 	streq	r0, [r1, #-256]	; 0x100
 1dc:	00000194 	muleq	r0, r4, r1
 1e0:	00531401 	subseq	r1, r3, r1, lsl #8
 1e4:	01010000 	mrseq	r0, (UNDEF: 1)
 1e8:	00016c05 	andeq	r6, r1, r5, lsl #24
 1ec:	53150100 	tstpl	r5, #0, 2
 1f0:	01000000 	mrseq	r0, (UNDEF: 0)
 1f4:	01ca0501 	biceq	r0, sl, r1, lsl #10
 1f8:	16010000 	strne	r0, [r1], -r0
 1fc:	00000053 	andeq	r0, r0, r3, asr r0
 200:	bf050101 	svclt	0x00050101
 204:	01000001 	tsteq	r0, r1
 208:	00005317 	andeq	r5, r0, r7, lsl r3
 20c:	05010100 	streq	r0, [r1, #-256]	; 0x100
 210:	0000019e 	muleq	r0, lr, r1
 214:	00531801 	subseq	r1, r3, r1, lsl #16
 218:	01010000 	mrseq	r0, (UNDEF: 1)
 21c:	00005e06 	andeq	r5, r0, r6, lsl #28
 220:	0000e400 	andeq	lr, r0, r0, lsl #8
 224:	00e90700 	rsceq	r0, r9, r0, lsl #14
 228:	00130000 	andseq	r0, r3, r0
 22c:	0000d404 	andeq	sp, r0, r4, lsl #8
 230:	07040200 	streq	r0, [r4, -r0, lsl #4]
 234:	00000032 	andeq	r0, r0, r2, lsr r0
 238:	00015408 	andeq	r5, r1, r8, lsl #8
 23c:	e4320100 	ldrt	r0, [r2], #-256	; 0x100
 240:	01000000 	mrseq	r0, (UNDEF: 0)
 244:	00000305 	andeq	r0, r0, r5, lsl #6
 248:	01090800 	tsteq	r9, r0, lsl #16
 24c:	0000015c 	andeq	r0, r0, ip, asr r1
 250:	50015f01 	andpl	r5, r1, r1, lsl #30
 254:	56080001 	strpl	r0, [r8], -r1
 258:	38080001 	stmdacc	r8, {r0}
 25c:	01000000 	mrseq	r0, (UNDEF: 0)
 260:	01ae010a 			; <UNDEFINED> instruction: 0x01ae010a
 264:	4a010000 	bmi	4026c <vectors-0x7fbfd94>
 268:	0000c401 	andeq	ip, r0, r1, lsl #8
 26c:	00015008 	andeq	r5, r1, r8
 270:	00006408 	andeq	r6, r0, r8, lsl #8
 274:	018d0100 	orreq	r0, sp, r0, lsl #2
 278:	a70b0000 	strge	r0, [fp, -r0]
 27c:	01000001 	tsteq	r0, r1
 280:	0000534c 	andeq	r5, r0, ip, asr #6
 284:	64910200 	ldrvs	r0, [r1], #512	; 0x200
 288:	0001420b 	andeq	r4, r1, fp, lsl #4
 28c:	8d4d0100 	stfhie	f0, [sp, #-0]
 290:	02000001 	andeq	r0, r0, #1
 294:	830b7491 	movwhi	r7, #46225	; 0xb491
 298:	01000001 	tsteq	r0, r1
 29c:	00018d4e 	andeq	r8, r1, lr, asr #26
 2a0:	70910200 	addsvc	r0, r1, r0, lsl #4
 2a4:	0000dc0c 	andeq	sp, r0, ip, lsl #24
 2a8:	00010408 	andeq	r0, r1, r8, lsl #8
 2ac:	00017608 	andeq	r7, r1, r8, lsl #12
 2b0:	00690d00 	rsbeq	r0, r9, r0, lsl #26
 2b4:	01934f01 	orrseq	r4, r3, r1, lsl #30
 2b8:	91020000 	mrsls	r0, (UNDEF: 2)
 2bc:	120e006c 	andne	r0, lr, #108	; 0x6c
 2c0:	32080001 	andcc	r0, r8, #1
 2c4:	0d080001 	stceq	0, cr0, [r8, #-4]
 2c8:	56010069 	strpl	r0, [r1], -r9, rrx
 2cc:	00000193 	muleq	r0, r3, r1
 2d0:	00689102 	rsbeq	r9, r8, r2, lsl #2
 2d4:	33040f00 	movwcc	r0, #20224	; 0x4f00
 2d8:	10000000 	andne	r0, r0, r0
 2dc:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
 2e0:	Address 0x000002e0 is out of bounds.


Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
   4:	030b130e 	movweq	r1, #45838	; 0xb30e
   8:	110e1b0e 	tstne	lr, lr, lsl #22
   c:	10011201 	andne	r1, r1, r1, lsl #4
  10:	02000006 	andeq	r0, r0, #6
  14:	0b0b0024 	bleq	2c00ac <vectors-0x7d3ff54>
  18:	0e030b3e 	vmoveq.16	d3[0], r0
  1c:	16030000 	strne	r0, [r3], -r0
  20:	3a0e0300 	bcc	380c28 <vectors-0x7c7f3d8>
  24:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  28:	04000013 	streq	r0, [r0], #-19
  2c:	13490035 	movtne	r0, #36917	; 0x9035
  30:	13050000 	movwne	r0, #20480	; 0x5000
  34:	3a0b0b01 	bcc	2c2c40 <vectors-0x7d3d3c0>
  38:	010b3b0b 	tsteq	fp, fp, lsl #22
  3c:	06000013 			; <UNDEFINED> instruction: 0x06000013
  40:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
  44:	0b3b0b3a 	bleq	ec2d34 <vectors-0x713d2cc>
  48:	0b0b1349 	bleq	2c4d74 <vectors-0x7d3b28c>
  4c:	0b0c0b0d 	bleq	302c88 <vectors-0x7cfd378>
  50:	00000a38 	andeq	r0, r0, r8, lsr sl
  54:	0b011707 	bleq	45c78 <vectors-0x7fba388>
  58:	3b0b3a0b 	blcc	2ce88c <vectors-0x7d31774>
  5c:	0013010b 	andseq	r0, r3, fp, lsl #2
  60:	000d0800 	andeq	r0, sp, r0, lsl #16
  64:	0b3a0e03 	bleq	e83878 <vectors-0x717c788>
  68:	13490b3b 	movtne	r0, #39739	; 0x9b3b
  6c:	34090000 	strcc	r0, [r9], #-0
  70:	3a0e0300 	bcc	380c78 <vectors-0x7c7f388>
  74:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
  78:	020c3f13 	andeq	r3, ip, #19, 30	; 0x4c
  7c:	0a00000a 	beq	ac <vectors-0x7ffff54>
  80:	0b0b000f 	bleq	2c00c4 <vectors-0x7d3ff3c>
  84:	00001349 	andeq	r1, r0, r9, asr #6
  88:	3f012e0b 	svccc	0x00012e0b
  8c:	3a0e030c 	bcc	380cc4 <vectors-0x7c7f33c>
  90:	270b3b0b 	strcs	r3, [fp, -fp, lsl #22]
  94:	1113490c 	tstne	r3, ip, lsl #18
  98:	40011201 	andmi	r1, r1, r1, lsl #4
  9c:	0c429706 	mcrreq	7, 0, r9, r2, cr6
  a0:	00001301 	andeq	r1, r0, r1, lsl #6
  a4:	0300340c 	movweq	r3, #1036	; 0x40c
  a8:	3b0b3a0e 	blcc	2ce8e8 <vectors-0x7d31718>
  ac:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
  b0:	0d00000a 	stceq	0, cr0, [r0, #-40]	; 0xffffffd8
  b4:	08030034 	stmdaeq	r3, {r2, r4, r5}
  b8:	0b3b0b3a 	bleq	ec2da8 <vectors-0x713d258>
  bc:	0a021349 	beq	84de8 <vectors-0x7f7b218>
  c0:	240e0000 	strcs	r0, [lr], #-0
  c4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
  c8:	0008030b 	andeq	r0, r8, fp, lsl #6
  cc:	01010f00 	tsteq	r1, r0, lsl #30
  d0:	13011349 	movwne	r1, #4937	; 0x1349
  d4:	21100000 	tstcs	r0, r0
  d8:	2f134900 	svccs	0x00134900
  dc:	0000000b 	andeq	r0, r0, fp
  e0:	25011101 	strcs	r1, [r1, #-257]	; 0x101
  e4:	030b130e 	movweq	r1, #45838	; 0xb30e
  e8:	110e1b0e 	tstne	lr, lr, lsl #22
  ec:	10011201 	andne	r1, r1, r1, lsl #4
  f0:	02000006 	andeq	r0, r0, #6
  f4:	0b0b0024 	bleq	2c018c <vectors-0x7d3fe74>
  f8:	0e030b3e 	vmoveq.16	d3[0], r0
  fc:	16030000 	strne	r0, [r3], -r0
 100:	3a0e0300 	bcc	380d08 <vectors-0x7c7f2f8>
 104:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 108:	04000013 	streq	r0, [r0], #-19
 10c:	13490026 	movtne	r0, #36902	; 0x9026
 110:	34050000 	strcc	r0, [r5], #-0
 114:	3a0e0300 	bcc	380d1c <vectors-0x7c7f2e4>
 118:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 11c:	3c0c3f13 	stccc	15, cr3, [ip], {19}
 120:	0600000c 	streq	r0, [r0], -ip
 124:	13490101 	movtne	r0, #37121	; 0x9101
 128:	00001301 	andeq	r1, r0, r1, lsl #6
 12c:	49002107 	stmdbmi	r0, {r0, r1, r2, r8, sp}
 130:	000b2f13 	andeq	r2, fp, r3, lsl pc
 134:	00340800 	eorseq	r0, r4, r0, lsl #16
 138:	0b3a0e03 	bleq	e8394c <vectors-0x717c6b4>
 13c:	13490b3b 	movtne	r0, #39739	; 0x9b3b
 140:	0a020c3f 	beq	83244 <vectors-0x7f7cdbc>
 144:	2e090000 	cdpcs	0, 0, cr0, cr9, cr0, {0}
 148:	030c3f00 	movweq	r3, #52992	; 0xcf00
 14c:	3b0b3a0e 	blcc	2ce98c <vectors-0x7d31674>
 150:	110c270b 	tstne	ip, fp, lsl #14
 154:	40011201 	andmi	r1, r1, r1, lsl #4
 158:	0c429706 	mcrreq	7, 0, r9, r2, cr6
 15c:	2e0a0000 	cdpcs	0, 0, cr0, cr10, cr0, {0}
 160:	030c3f01 	movweq	r3, #52993	; 0xcf01
 164:	3b0b3a0e 	blcc	2ce9a4 <vectors-0x7d3165c>
 168:	110c270b 	tstne	ip, fp, lsl #14
 16c:	40011201 	andmi	r1, r1, r1, lsl #4
 170:	0c429606 	mcrreq	6, 0, r9, r2, cr6
 174:	00001301 	andeq	r1, r0, r1, lsl #6
 178:	0300340b 	movweq	r3, #1035	; 0x40b
 17c:	3b0b3a0e 	blcc	2ce9bc <vectors-0x7d31644>
 180:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
 184:	0c00000a 	stceq	0, cr0, [r0], {10}
 188:	0111010b 	tsteq	r1, fp, lsl #2
 18c:	13010112 	movwne	r0, #4370	; 0x1112
 190:	340d0000 	strcc	r0, [sp], #-0
 194:	3a080300 	bcc	200d9c <vectors-0x7dff264>
 198:	490b3b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
 19c:	000a0213 	andeq	r0, sl, r3, lsl r2
 1a0:	010b0e00 	tsteq	fp, r0, lsl #28
 1a4:	01120111 	tsteq	r2, r1, lsl r1
 1a8:	0f0f0000 	svceq	0x000f0000
 1ac:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
 1b0:	10000013 	andne	r0, r0, r3, lsl r0
 1b4:	0b0b0024 	bleq	2c024c <vectors-0x7d3fdb4>
 1b8:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
 1bc:	Address 0x000001bc is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00000000 	andeq	r0, r0, r0
   4:	00000002 	andeq	r0, r0, r2
   8:	007d0002 	rsbseq	r0, sp, r2
   c:	00000002 	andeq	r0, r0, r2
  10:	00000004 	andeq	r0, r0, r4
  14:	047d0002 	ldrbteq	r0, [sp], #-2
  18:	00000004 	andeq	r0, r0, r4
  1c:	00000006 	andeq	r0, r0, r6
  20:	107d0002 	rsbsne	r0, sp, r2
  24:	00000006 	andeq	r0, r0, r6
  28:	00000074 	andeq	r0, r0, r4, ror r0
  2c:	10770002 	rsbsne	r0, r7, r2
	...
  38:	0000008c 	andeq	r0, r0, ip, lsl #1
  3c:	0000008e 	andeq	r0, r0, lr, lsl #1
  40:	007d0002 	rsbseq	r0, sp, r2
  44:	0000008e 	andeq	r0, r0, lr, lsl #1
  48:	00000090 	muleq	r0, r0, r0
  4c:	047d0002 	ldrbteq	r0, [sp], #-2
  50:	00000090 	muleq	r0, r0, r0
  54:	00000092 	muleq	r0, r2, r0
  58:	04770002 	ldrbteq	r0, [r7], #-2
	...
  68:	00000002 	andeq	r0, r0, r2
  6c:	007d0002 	rsbseq	r0, sp, r2
  70:	00000002 	andeq	r0, r0, r2
  74:	00000004 	andeq	r0, r0, r4
  78:	087d0002 	ldmdaeq	sp!, {r1}^
  7c:	00000004 	andeq	r0, r0, r4
  80:	00000006 	andeq	r0, r0, r6
  84:	207d0002 	rsbscs	r0, sp, r2
  88:	00000006 	andeq	r0, r0, r6
  8c:	0000008c 	andeq	r0, r0, ip, lsl #1
  90:	20770002 	rsbscs	r0, r7, r2
	...

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	08000050 	stmdaeq	r0, {r4, r6}
  14:	00000074 	andeq	r0, r0, r4, ror r0
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	01480002 	cmpeq	r8, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  34:	00000092 	muleq	r0, r2, r0
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	00000065 	andeq	r0, r0, r5, rrx
   4:	00310002 	eorseq	r0, r1, r2
   8:	01020000 	mrseq	r0, (UNDEF: 2)
   c:	000d0efb 	strdeq	r0, [sp], -fp
  10:	01010101 	tsteq	r1, r1, lsl #2
  14:	01000000 	mrseq	r0, (UNDEF: 0)
  18:	00010000 	andeq	r0, r1, r0
  1c:	6e69616d 	powvsez	f6, f1, #5.0
  20:	0000632e 	andeq	r6, r0, lr, lsr #6
  24:	6c500000 	mravs	r0, r0, acc0
  28:	6f667461 	svcvs	0x00667461
  2c:	545f6d72 	ldrbpl	r6, [pc], #-3442	; 34 <vectors-0x7ffffcc>
  30:	73657079 	cmnvc	r5, #121	; 0x79
  34:	0000682e 	andeq	r6, r0, lr, lsr #16
  38:	00000000 	andeq	r0, r0, r0
  3c:	00500205 	subseq	r0, r0, r5, lsl #4
  40:	1b030800 	blne	c2048 <vectors-0x7f3dfb8>
  44:	86684001 	strbthi	r4, [r8], -r1
  48:	04020068 	streq	r0, [r2], #-104	; 0x68
  4c:	003c0603 	eorseq	r0, ip, r3, lsl #12
  50:	3c010402 	cfstrscc	mvf0, [r1], {2}
  54:	00675a06 	rsbeq	r5, r7, r6, lsl #20
  58:	06030402 	streq	r0, [r3], -r2, lsl #8
  5c:	0402003c 	streq	r0, [r2], #-60	; 0x3c
  60:	53063c01 	movwpl	r3, #27649	; 0x6c01
  64:	01000702 	tsteq	r0, r2, lsl #14
  68:	00009201 	andeq	r9, r0, r1, lsl #4
  6c:	36000200 	strcc	r0, [r0], -r0, lsl #4
  70:	02000000 	andeq	r0, r0, #0
  74:	0d0efb01 	vstreq	d15, [lr, #-4]
  78:	01010100 	mrseq	r0, (UNDEF: 17)
  7c:	00000001 	andeq	r0, r0, r1
  80:	01000001 	tsteq	r0, r1
  84:	61747300 	cmnvs	r4, r0, lsl #6
  88:	70757472 	rsbsvc	r7, r5, r2, ror r4
  8c:	0000632e 	andeq	r6, r0, lr, lsr #6
  90:	2f2e0000 	svccs	0x002e0000
  94:	74616c50 	strbtvc	r6, [r1], #-3152	; 0xc50
  98:	6d726f66 	ldclvs	15, cr6, [r2, #-408]!	; 0xfffffe68
  9c:	7079545f 	rsbsvc	r5, r9, pc, asr r4
  a0:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
  a4:	00000000 	andeq	r0, r0, r0
  a8:	02050000 	andeq	r0, r5, #0
  ac:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  b0:	0100c903 	tsteq	r0, r3, lsl #18
  b4:	2f4b213d 	svccs	0x004b213d
  b8:	0402002f 	streq	r0, [r2], #-47	; 0x2f
  bc:	02003d03 	andeq	r3, r0, #3, 26	; 0xc0
  c0:	004b0304 	subeq	r0, fp, r4, lsl #6
  c4:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  c8:	03040200 	movweq	r0, #16896	; 0x4200
  cc:	04020039 	streq	r0, [r2], #-57	; 0x39
  d0:	063c0601 	ldrteq	r0, [ip], -r1, lsl #12
  d4:	002f594f 	eoreq	r5, pc, pc, asr #18
  d8:	3d030402 	cfstrscc	mvf0, [r3, #-8]
  dc:	03040200 	movweq	r0, #16896	; 0x4200
  e0:	0402003d 	streq	r0, [r2], #-61	; 0x3d
  e4:	02003a03 	andeq	r3, r0, #12288	; 0x3000
  e8:	3c060104 	stfccs	f0, [r6], {4}
  ec:	00214e06 	eoreq	r4, r1, r6, lsl #28
  f0:	2f010402 	svccs	0x00010402
  f4:	040200bd 	streq	r0, [r2], #-189	; 0xbd
  f8:	01022f01 	tsteq	r2, r1, lsl #30
  fc:	Address 0x000000fc is out of bounds.


Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
   4:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
   8:	6e692067 	cdpvs	0, 6, cr2, cr9, cr7, {3}
   c:	69750074 	ldmdbvs	r5!, {r2, r4, r5, r6}^
  10:	3233746e 	eorscc	r7, r3, #1845493760	; 0x6e000000
  14:	69616d00 	stmdbvs	r1!, {r8, sl, fp, sp, lr}^
  18:	00632e6e 	rsbeq	r2, r3, lr, ror #28
  1c:	5f52444f 	svcpl	0x0052444f
  20:	69700074 	ldmdbvs	r0!, {r2, r4, r5, r6}^
  24:	0033316e 	eorseq	r3, r3, lr, ror #2
  28:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  2c:	6e6f6c20 	cdpvs	12, 6, cr6, cr15, cr0, {1}
  30:	6e752067 	cdpvs	0, 7, cr2, cr5, cr7, {3}
  34:	6e676973 	mcrvs	9, 3, r6, cr7, cr3, {3}
  38:	69206465 	stmdbvs	r0!, {r0, r2, r5, r6, sl, sp, lr}
  3c:	7200746e 	andvc	r7, r0, #1845493760	; 0x6e000000
  40:	76726573 			; <UNDEFINED> instruction: 0x76726573
  44:	70006465 	andvc	r6, r0, r5, ror #8
  48:	00736e69 	rsbseq	r6, r3, r9, ror #28
  4c:	69736e75 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, sl, fp, sp, lr}^
  50:	64656e67 	strbtvs	r6, [r5], #-3687	; 0xe67
  54:	61686320 	cmnvs	r8, r0, lsr #6
  58:	616d0072 	smcvs	53250	; 0xd002
  5c:	64006e69 	strvs	r6, [r0], #-3689	; 0xe69
  60:	6c62756f 	cfstr64vs	mvdx7, [r2], #-444	; 0xfffffe44
  64:	73620065 	cmnvc	r2, #101	; 0x65
  68:	61765f73 	cmnvs	r6, r3, ror pc
  6c:	3a450072 	bcc	114023c <vectors-0x6ebfdc4>
  70:	626d452f 	rsbvs	r4, sp, #197132288	; 0xbc00000
  74:	65646465 	strbvs	r6, [r4, #-1125]!	; 0x465
  78:	79535f64 	ldmdbvc	r3, {r2, r5, r6, r8, r9, sl, fp, ip, lr}^
  7c:	6d657473 	cfstrdvs	mvd7, [r5, #-460]!	; 0xfffffe34
  80:	2f534b5f 	svccs	0x00534b5f
  84:	69552d32 	ldmdbvs	r5, {r1, r4, r5, r8, sl, fp, sp}^
  88:	2033746e 	eorscs	r7, r3, lr, ror #8
  8c:	65626d45 	strbvs	r6, [r2, #-3397]!	; 0xd45
  90:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  94:	4c2f4320 	stcmi	3, cr4, [pc], #-128	; 1c <vectors-0x7ffffe4>
  98:	6f737365 	svcvs	0x00737365
  9c:	2f33206e 	svccs	0x0033206e
  a0:	3262614c 	rsbcc	r6, r2, #76, 2
  a4:	6f687300 	svcvs	0x00687300
  a8:	75207472 	strvc	r7, [r0, #-1138]!	; 0x472
  ac:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  b0:	2064656e 	rsbcs	r6, r4, lr, ror #10
  b4:	00746e69 	rsbseq	r6, r4, r9, ror #28
  b8:	20554e47 	subscs	r4, r5, r7, asr #28
  bc:	20313143 	eorscs	r3, r1, r3, asr #2
  c0:	2e332e37 	mrccs	14, 1, r2, cr3, cr7, {1}
  c4:	30322031 	eorscc	r2, r2, r1, lsr r0
  c8:	36303831 			; <UNDEFINED> instruction: 0x36303831
  cc:	28203232 	stmdacs	r0!, {r1, r4, r5, r9, ip, sp}
  d0:	656c6572 	strbvs	r6, [ip, #-1394]!	; 0x572
  d4:	29657361 	stmdbcs	r5!, {r0, r5, r6, r8, r9, ip, sp, lr}^
  d8:	52415b20 	subpl	r5, r1, #32, 22	; 0x8000
  dc:	6d652f4d 	stclvs	15, cr2, [r5, #-308]!	; 0xfffffecc
  e0:	64646562 	strbtvs	r6, [r4], #-1378	; 0x562
  e4:	372d6465 	strcc	r6, [sp, -r5, ror #8]!
  e8:	6172622d 	cmnvs	r2, sp, lsr #4
  ec:	2068636e 	rsbcs	r6, r8, lr, ror #6
  f0:	69766572 	ldmdbvs	r6!, {r1, r4, r5, r6, r8, sl, sp, lr}^
  f4:	6e6f6973 	mcrvs	9, 3, r6, cr15, cr3, {3}
  f8:	31363220 	teqcc	r6, r0, lsr #4
  fc:	5d373039 	ldcpl	0, cr3, [r7, #-228]!	; 0xffffff1c
 100:	636d2d20 	cmnvs	sp, #32, 26	; 0x800
 104:	633d7570 	teqvs	sp, #112, 10	; 0x1c000000
 108:	6574726f 	ldrbvs	r7, [r4, #-623]!	; 0x26f
 10c:	336d2d78 	cmncc	sp, #120, 26	; 0x1e00
 110:	746d2d20 	strbtvc	r2, [sp], #-3360	; 0xd20
 114:	626d7568 	rsbvs	r7, sp, #104, 10	; 0x1a000000
 118:	64672d20 	strbtvs	r2, [r7], #-3360	; 0xd20
 11c:	66726177 			; <UNDEFINED> instruction: 0x66726177
 120:	6600322d 	strvs	r3, [r0], -sp, lsr #4
 124:	74616f6c 	strbtvc	r6, [r1], #-3948	; 0xf6c
 128:	726f5000 	rsbvc	r5, pc, #0
 12c:	73004174 	movwvc	r4, #372	; 0x174
 130:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xf68
 134:	746e6920 	strbtvc	r6, [lr], #-2336	; 0x920
 138:	6c6c6100 	stfvse	f6, [ip], #-0
 13c:	726f705f 	rsbvc	r7, pc, #95	; 0x5f
 140:	505f0074 	subspl	r0, pc, r4, ror r0	; <UNPREDICTABLE>
 144:	535f7274 	cmppl	pc, #116, 4	; 0x40000007
 148:	6372756f 	cmnvs	r2, #465567744	; 0x1bc00000
 14c:	69750065 	ldmdbvs	r5!, {r0, r2, r5, r6}^
 150:	0038746e 	eorseq	r7, r8, lr, ror #8
 154:	74636576 	strbtvc	r6, [r3], #-1398	; 0x576
 158:	0073726f 	rsbseq	r7, r3, pc, ror #4
 15c:	75666544 	strbvc	r6, [r6, #-1348]!	; 0x544
 160:	5f746c61 	svcpl	0x00746c61
 164:	646e6168 	strbtvs	r6, [lr], #-360	; 0x168
 168:	0072656c 	rsbseq	r6, r2, ip, ror #10
 16c:	4154535f 	cmpmi	r4, pc, asr r3
 170:	445f5452 	ldrbmi	r5, [pc], #-1106	; 178 <vectors-0x7fffe88>
 174:	00415441 	subeq	r5, r1, r1, asr #8
 178:	4154535f 	cmpmi	r4, pc, asr r3
 17c:	545f4b43 	ldrbpl	r4, [pc], #-2883	; 184 <vectors-0x7fffe7c>
 180:	5f00504f 	svcpl	0x0000504f
 184:	5f727450 	svcpl	0x00727450
 188:	74736544 	ldrbtvc	r6, [r3], #-1348	; 0x544
 18c:	74616e69 	strbtvc	r6, [r1], #-3689	; 0xe69
 190:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 194:	444e455f 	strbmi	r4, [lr], #-1375	; 0x55f
 198:	5845545f 	stmdapl	r5, {r0, r1, r2, r3, r4, r6, sl, ip, lr}^
 19c:	455f0054 	ldrbmi	r0, [pc, #-84]	; 150 <vectors-0x7fffeb0>
 1a0:	425f444e 	subsmi	r4, pc, #1308622848	; 0x4e000000
 1a4:	5f005353 	svcpl	0x00005353
 1a8:	455a4953 	ldrbmi	r4, [sl, #-2387]	; 0x953
 1ac:	725f005f 	subsvc	r0, pc, #95	; 0x5f
 1b0:	74657365 	strbtvc	r7, [r5], #-869	; 0x365
 1b4:	61747300 	cmnvs	r4, r0, lsl #6
 1b8:	70757472 	rsbsvc	r7, r5, r2, ror r4
 1bc:	5f00632e 	svcpl	0x0000632e
 1c0:	52415453 	subpl	r5, r1, #1392508928	; 0x53000000
 1c4:	53425f54 	movtpl	r5, #12116	; 0x2f54
 1c8:	455f0053 	ldrbmi	r0, [pc, #-83]	; 17d <vectors-0x7fffe83>
 1cc:	445f444e 	ldrbmi	r4, [pc], #-1102	; 1d4 <vectors-0x7fffe2c>
 1d0:	00415441 	subeq	r5, r1, r1, asr #8

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <vectors-0x6f2f2dc>
   4:	4e472820 	cdpmi	8, 4, cr2, cr7, cr0, {1}
   8:	6f542055 	svcvs	0x00542055
   c:	20736c6f 	rsbscs	r6, r3, pc, ror #24
  10:	20726f66 	rsbscs	r6, r2, r6, ror #30
  14:	334d5453 	movtcc	r5, #54355	; 0xd453
  18:	2d372032 	ldccs	0, cr2, [r7, #-200]!	; 0xffffff38
  1c:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  20:	2d32712d 	ldfcss	f7, [r2, #-180]!	; 0xffffff4c
  24:	61647075 	smcvs	18181	; 0x4705
  28:	322e6574 	eorcc	r6, lr, #116, 10	; 0x1d000000
  2c:	30393130 	eorscc	r3, r9, r0, lsr r1
  30:	2d383233 	lfmcs	f3, 4, [r8, #-204]!	; 0xffffff34
  34:	30303831 	eorscc	r3, r0, r1, lsr r8
  38:	2e372029 	cdpcs	0, 3, cr2, cr7, cr9, {1}
  3c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  40:	38313032 	ldmdacc	r1!, {r1, r4, r5, ip, sp}
  44:	32323630 	eorscc	r3, r2, #48, 12	; 0x3000000
  48:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0x820
  4c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  50:	5b202965 	blpl	80a5ec <vectors-0x77f5a14>
  54:	2f4d5241 	svccs	0x004d5241
  58:	65626d65 	strbvs	r6, [r2, #-3429]!	; 0xd65
  5c:	64656464 	strbtvs	r6, [r5], #-1124	; 0x464
  60:	622d372d 	eorvs	r3, sp, #11796480	; 0xb40000
  64:	636e6172 	cmnvs	lr, #-2147483620	; 0x8000001c
  68:	65722068 	ldrbvs	r2, [r2, #-104]!	; 0x68
  6c:	69736976 	ldmdbvs	r3!, {r1, r2, r4, r5, r6, r8, fp, sp, lr}^
  70:	32206e6f 	eorcc	r6, r0, #1776	; 0x6f0
  74:	30393136 	eorscc	r3, r9, r6, lsr r1
  78:	Address 0x00000078 is out of bounds.


Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
   0:	00003241 	andeq	r3, r0, r1, asr #4
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	00000028 	andeq	r0, r0, r8, lsr #32
  10:	726f4305 	rsbvc	r4, pc, #335544320	; 0x14000000
  14:	2d786574 	cfldr64cs	mvdx6, [r8, #-464]!	; 0xfffffe30
  18:	0600334d 	streq	r3, [r0], -sp, asr #6
  1c:	094d070a 	stmdbeq	sp, {r1, r3, r8, r9, sl}^
  20:	14041202 	strne	r1, [r4], #-514	; 0x202
  24:	17011501 	strne	r1, [r1, -r1, lsl #10]
  28:	19011803 	stmdbne	r1, {r0, r1, fp, ip}
  2c:	1e011a01 	vmlane.f32	s2, s2, s2
  30:	Address 0x00000030 is out of bounds.


Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	08000050 	stmdaeq	r0, {r4, r6}
  1c:	00000074 	andeq	r0, r0, r4, ror r0
  20:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  24:	100e4101 	andne	r4, lr, r1, lsl #2
  28:	00070d41 	andeq	r0, r7, r1, asr #26
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	0000001c 	andeq	r0, r0, ip, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	080000c4 	stmdaeq	r0, {r2, r6, r7}
  48:	0000008c 	andeq	r0, r0, ip, lsl #1
  4c:	87080e41 	strhi	r0, [r8, -r1, asr #28]
  50:	41018e02 	tstmi	r1, r2, lsl #28
  54:	0d41200e 	stcleq	0, cr2, [r1, #-56]	; 0xffffffc8
  58:	00000007 	andeq	r0, r0, r7
  5c:	00000014 	andeq	r0, r0, r4, lsl r0
  60:	0000002c 	andeq	r0, r0, ip, lsr #32
  64:	08000150 	stmdaeq	r0, {r4, r6, r8}
  68:	00000006 	andeq	r0, r0, r6
  6c:	87040e41 	strhi	r0, [r4, -r1, asr #28]
  70:	070d4101 	streq	r4, [sp, -r1, lsl #2]
