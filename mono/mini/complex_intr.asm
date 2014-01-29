Mono Ahead of Time compiler - compiling assembly /home/user/mono_xamarin/mono/mini/complex-test.exe
converting method Test:.ctor ()
remove_block_if_useless, removed BB3

LIVENESS:
BLOCK BB0 (BB2, ):
GEN  BB0: {}
KILL BB0: {}
BLOCK BB2 (BB1, ):
GEN  BB2: {}
KILL BB2: {}
BLOCK BB1 ():
GEN  BB1: {}
KILL BB1: {}

ITERATION:
P: BB1(2): IN: BB2 OUT:
P: BB2(1): IN: BB0 OUT:BB1 
	LIVE IN  BB2: {}
P: BB0(0): IN: OUT:BB2 
	LIVE IN  BB0: {}
IT: 3 2.
LIVE IN  BB1: {}
LIVE OUT BB1: {}
LIVE IN  BB2: {}
LIVE OUT BB2: {}
LIVE IN  BB0: {}
LIVE OUT BB0: {}
V0: [0x0 - 0x0]
LIVENESS 2 Test:.ctor ()
LIVENESS BLOCK BB1:
LIVENESS BLOCK BB2:
LIVENESS BLOCK BB0:
Method Test:.ctor () emitted at 0x41aadb40 to 0x41aadb49 (code length 9) [complex-test.exe]

/tmp/.rC7589:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <t__ctor>:
<BB>:1
   0:	48 83 ec 08          	sub    $0x8,%rsp
   4:	48 83 c4 08          	add    $0x8,%rsp
   8:	c3                   	retq   
converting method Test:Main ()

LIVENESS:
BLOCK BB0 (BB3, ):
GEN  BB0: {}
KILL BB0: {}
BLOCK BB3 (BB4, BB5, ):
	 xzero R17 <-
	KILL: R17(1)
	 xzero R18 <-
	KILL: R18(2)
	 xzero R19 <-
	KILL: R19(3)
	 xzero R20 <-
	KILL: R20(4)
	 ldaddr R21 <- R17
	GEN: R17(1)
	 r8const R28 <- [1.000000]
	 storer8_membase_reg [R21] <- R28
	 r8const R30 <- [2.000000]
	 storer8_membase_reg [R21 + 0x8] <- R30
	 ldaddr R31 <- R18
	GEN: R18(2)
	 r8const R38 <- [3.000000]
	 storer8_membase_reg [R31] <- R38
	 r8const R40 <- [4.000000]
	 storer8_membase_reg [R31 + 0x8] <- R40
	 addpd R19 <- R17 R18 clobbers: 1
	GEN: R17(1)
	GEN: R18(2)
	KILL: R19(3)
	 unpack_lowpd R46 <- R18 R18 clobbers: 1
	GEN: R18(2)
	GEN: R18(2)
	 mulpd R47 <- R46 R17 clobbers: 1
	GEN: R17(1)
	 unpack_highpd R48 <- R18 R18 clobbers: 1
	GEN: R18(2)
	GEN: R18(2)
	 mulpd R49 <- R48 R17 clobbers: 1
	GEN: R17(1)
	 shufpd R51 <- R49 R49 clobbers: 1
	 addsubpd R20 <- R47 R51 clobbers: 1
	KILL: R20(4)
	 ldaddr R52 <- R19
	GEN: R19(3)
	 loadr8_membase R53 <- [R52 + 0x0]
	 r8const R54 <- [4.000000]
	 fcompare R53 R54 clobbers: a
	 float_bne_un
GEN  BB3: {}
KILL BB3: {1, 2, 3, 4}
BLOCK BB4 (BB1, ):
	 iconst R16 <- [-1]
	KILL: R16(0)
	 br [B1]
GEN  BB4: {}
KILL BB4: {0}
BLOCK BB1 ():
GEN  BB1: {}
KILL BB1: {}
BLOCK BB5 (BB6, BB4, ):
	 ldaddr R55 <- R19
	GEN: R19(3)
	 loadr8_membase R56 <- [R55 + 0x8]
	 r8const R57 <- [6.000000]
	 fcompare R56 R57 clobbers: a
	 float_beq
GEN  BB5: {3}
KILL BB5: {}
BLOCK BB6 (BB7, BB8, ):
	 ldaddr R59 <- R20
	GEN: R20(4)
	 loadr8_membase R60 <- [R59 + 0x0]
	 r8const R61 <- [-5.000000]
	 fcompare R60 R61 clobbers: a
	 float_bne_un
GEN  BB6: {4}
KILL BB6: {}
BLOCK BB7 (BB1, ):
	 iconst R16 <- [-1]
	KILL: R16(0)
	 br [B1]
GEN  BB7: {}
KILL BB7: {0}
BLOCK BB8 (BB9, BB7, ):
	 ldaddr R62 <- R20
	GEN: R20(4)
	 loadr8_membase R63 <- [R62 + 0x8]
	 r8const R64 <- [10.000000]
	 fcompare R63 R64 clobbers: a
	 float_beq
GEN  BB8: {4}
KILL BB8: {}
BLOCK BB9 (BB1, ):
	 iconst R16 <- [0]
	KILL: R16(0)
GEN  BB9: {}
KILL BB9: {0}

ITERATION:
P: BB9(8): IN: BB8 OUT:BB1 
	LIVE IN  BB9: {}
P: BB8(7): IN: BB6 OUT:BB9 BB7 
	LIVE IN  BB8: {4}
P: BB7(6): IN: BB6 BB8 OUT:BB1 
	LIVE IN  BB7: {}
P: BB6(5): IN: BB5 OUT:BB7 BB8 
	LIVE IN  BB6: {4}
P: BB5(4): IN: BB3 OUT:BB6 BB4 
	LIVE IN  BB5: {3, 4}
P: BB1(3): IN: BB4 BB7 BB9 OUT:
P: BB4(2): IN: BB5 BB3 OUT:BB1 
	LIVE IN  BB4: {}
P: BB3(1): IN: BB0 OUT:BB4 BB5 
	LIVE IN  BB3: {}
P: BB0(0): IN: OUT:BB3 
	LIVE IN  BB0: {}
IT: 9 8.
LIVE IN  BB9: {}
LIVE OUT BB9: {}
LIVE IN  BB8: {4}
LIVE OUT BB8: {}
LIVE IN  BB7: {}
LIVE OUT BB7: {}
LIVE IN  BB6: {4}
LIVE OUT BB6: {4}
LIVE IN  BB5: {3, 4}
LIVE OUT BB5: {4}
LIVE IN  BB1: {}
LIVE OUT BB1: {}
LIVE IN  BB4: {}
LIVE OUT BB4: {}
LIVE IN  BB3: {}
LIVE OUT BB3: {3, 4}
LIVE IN  BB0: {}
LIVE OUT BB0: {}
V0: [0x0 - 0x80001]
V1: [0x10001 - 0x10024]
V2: [0x10003 - 0x10022]
V3: [0x10005 - 0x40000]
V4: [0x10007 - 0x70000]
LIVENESS 2 Test:Main ()
LIVENESS BLOCK BB9:
	80002:  iconst R16 <- [0]
	add range to R16: [80002, 8ffff)
LIVENESS BLOCK BB8:
	70006:  float_beq
	70005:  fcompare R63 R64 clobbers: a
	70004:  r8const R64 <- [10.000000]
	70003:  loadr8_membase R63 <- [R62 + 0x8]
	70002:  ldaddr R62 <- R20
Var R16 live at enter, add range to R16: [70001, 80001)
LIVENESS BLOCK BB7:
	60003:  br [B1]
	60002:  iconst R16 <- [-1]
	add range to R16: [60002, 70001)
LIVENESS BLOCK BB6:
Var R20 live at exit, set last_use to 60001
	50006:  float_bne_un
	50005:  fcompare R60 R61 clobbers: a
	50004:  r8const R61 <- [-5.000000]
	50003:  loadr8_membase R60 <- [R59 + 0x0]
	50002:  ldaddr R59 <- R20
Var R16 live at enter, add range to R16: [50001, 60001)
Var R20 live at enter, add range to R20: [50001, 60001)
LIVENESS BLOCK BB5:
Var R20 live at exit, set last_use to 50001
	40006:  float_beq
	40005:  fcompare R56 R57 clobbers: a
	40004:  r8const R57 <- [6.000000]
	40003:  loadr8_membase R56 <- [R55 + 0x8]
	40002:  ldaddr R55 <- R19
Var R16 live at enter, add range to R16: [40001, 50001)
Var R20 live at enter, add range to R20: [40001, 50001)
LIVENESS BLOCK BB1:
Var R16 live at enter, add range to R16: [30001, 40001)
LIVENESS BLOCK BB4:
	20003:  br [B1]
	20002:  iconst R16 <- [-1]
	add range to R16: [20002, 30001)
LIVENESS BLOCK BB3:
Var R19 live at exit, set last_use to 20001
Var R20 live at exit, set last_use to 20001
	1001b:  float_bne_un
	1001a:  fcompare R53 R54 clobbers: a
	10019:  r8const R54 <- [4.000000]
	10018:  loadr8_membase R53 <- [R52 + 0x0]
	10017:  ldaddr R52 <- R19
	10016:  addsubpd R20 <- R47 R51 clobbers: 1
	add range to R20: [10016, 20001)
	10015:  shufpd R51 <- R49 R49 clobbers: 1
	10014:  mulpd R49 <- R48 R17 clobbers: 1
	last use of R17 set to 10014
	10013:  unpack_highpd R48 <- R18 R18 clobbers: 1
	last use of R18 set to 10013
	10012:  mulpd R47 <- R46 R17 clobbers: 1
	10011:  unpack_lowpd R46 <- R18 R18 clobbers: 1
	10010:  addpd R19 <- R17 R18 clobbers: 1
	add range to R19: [10010, 20001)
	1000f:  storer8_membase_reg [R31 + 0x8] <- R40
	1000e:  r8const R40 <- [4.000000]
	1000d:  storer8_membase_reg [R31] <- R38
	1000c:  r8const R38 <- [3.000000]
	1000b:  ldaddr R31 <- R18
	1000a:  storer8_membase_reg [R21 + 0x8] <- R30
	10009:  r8const R30 <- [2.000000]
	10008:  storer8_membase_reg [R21] <- R28
	10007:  r8const R28 <- [1.000000]
	10006:  ldaddr R21 <- R17
	10005:  xzero R20 <-
	dead def of R20, add range to R20: [10005, 10006]
	10004:  xzero R19 <-
	dead def of R19, add range to R19: [10004, 10005]
	10003:  xzero R18 <-
	add range to R18: [10003, 10013)
	10002:  xzero R17 <-
	add range to R17: [10002, 10014)
Var R16 live at enter, add range to R16: [10001, 20001)
LIVENESS BLOCK BB0:
Var R16 live at enter, add range to R16: [1, 10001)
Method Test:Main () emitted at 0x41aadb50 to 0x41aadd08 (code length 440) [complex-test.exe]

/tmp/.sIe33Y:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <t_Main>:
<BB>:3
   0:	48 83 ec 48          	sub    $0x48,%rsp
   4:	66 0f ef c0          	pxor   %xmm0,%xmm0
   8:	0f 11 04 24          	movups %xmm0,(%rsp)
   c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  10:	0f 11 44 24 10       	movups %xmm0,0x10(%rsp)
  15:	66 0f ef c0          	pxor   %xmm0,%xmm0
  19:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
  1e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  22:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
  27:	f2 0f 10 05 81 01 00 	movsd  0x181(%rip),%xmm0        # 1b0 <t_Main+0x1b0>
  2e:	00 
  2f:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  34:	f2 0f 10 05 64 01 00 	movsd  0x164(%rip),%xmm0        # 1a0 <t_Main+0x1a0>
  3b:	00 
  3c:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  42:	f2 0f 10 05 46 01 00 	movsd  0x146(%rip),%xmm0        # 190 <t_Main+0x190>
  49:	00 
  4a:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  50:	f2 0f 10 05 28 01 00 	movsd  0x128(%rip),%xmm0        # 180 <t_Main+0x180>
  57:	00 
  58:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  5e:	0f 10 04 24          	movups (%rsp),%xmm0
  62:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  67:	66 0f 58 c1          	addpd  %xmm1,%xmm0
  6b:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
  70:	0f 10 44 24 10       	movups 0x10(%rsp),%xmm0
  75:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  7a:	66 0f 14 c1          	unpcklpd %xmm1,%xmm0
  7e:	0f 10 0c 24          	movups (%rsp),%xmm1
  82:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
  86:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  8b:	0f 10 54 24 10       	movups 0x10(%rsp),%xmm2
  90:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
  94:	0f 10 14 24          	movups (%rsp),%xmm2
  98:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
  9c:	66 0f c6 c9 01       	shufpd $0x1,%xmm1,%xmm1
  a1:	66 0f d0 c1          	addsubpd %xmm1,%xmm0
  a5:	0f 11 44 24 30       	movups %xmm0,0x30(%rsp)
  aa:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
  b0:	f2 0f 10 0d b8 00 00 	movsd  0xb8(%rip),%xmm1        # 170 <t_Main+0x170>
  b7:	00 
  b8:	66 0f 2f c8          	comisd %xmm0,%xmm1
  bc:	0f 85 22 00 00 00    	jne    e4 <t_Main+0xe4>
  c2:	0f 8a 1c 00 00 00    	jp     e4 <t_Main+0xe4>
  c8:	0f 82 16 00 00 00    	jb     e4 <t_Main+0xe4>
<BB>:5
  ce:	f2 0f 10 44 24 28    	movsd  0x28(%rsp),%xmm0
  d4:	f2 0f 10 0d 84 00 00 	movsd  0x84(%rip),%xmm1        # 160 <t_Main+0x160>
  db:	00 
  dc:	66 0f 2f c8          	comisd %xmm0,%xmm1
  e0:	7a 02                	jp     e4 <t_Main+0xe4>
  e2:	74 0f                	je     f3 <t_Main+0xf3>
<BB>:4
  e4:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffffffff,%rax
  eb:	ff ff ff 
  ee:	e9 3c 00 00 00       	jmpq   12f <t_Main+0x12f>
<BB>:6
  f3:	f2 0f 10 44 24 30    	movsd  0x30(%rsp),%xmm0
  f9:	f2 0f 10 0d 4f 00 00 	movsd  0x4f(%rip),%xmm1        # 150 <t_Main+0x150>
 100:	00 
 101:	66 0f 2f c8          	comisd %xmm0,%xmm1
 105:	75 1a                	jne    121 <t_Main+0x121>
 107:	7a 18                	jp     121 <t_Main+0x121>
 109:	72 16                	jb     121 <t_Main+0x121>
<BB>:8
 10b:	f2 0f 10 44 24 38    	movsd  0x38(%rsp),%xmm0
 111:	f2 0f 10 0d 27 00 00 	movsd  0x27(%rip),%xmm1        # 140 <t_Main+0x140>
 118:	00 
 119:	66 0f 2f c8          	comisd %xmm0,%xmm1
 11d:	7a 02                	jp     121 <t_Main+0x121>
 11f:	74 0c                	je     12d <t_Main+0x12d>
<BB>:7
 121:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffffffff,%rax
 128:	ff ff ff 
 12b:	eb 02                	jmp    12f <t_Main+0x12f>
<BB>:9
 12d:	33 c0                	xor    %eax,%eax
<BB>:1
 12f:	48 83 c4 48          	add    $0x48,%rsp
 133:	c3                   	retq   
	...
 144:	00 00                	add    %al,(%rax)
 146:	24 40                	and    $0x40,%al
	...
 154:	00 00                	add    %al,(%rax)
 156:	14 c0                	adc    $0xc0,%al
	...
 164:	00 00                	add    %al,(%rax)
 166:	18 40 00             	sbb    %al,0x0(%rax)
	...
 175:	00 10                	add    %dl,(%rax)
 177:	40 00 00             	add    %al,(%rax)
	...
 186:	10 40 00             	adc    %al,0x0(%rax)
	...
 195:	00 08                	add    %cl,(%rax)
 197:	40 00 00             	add    %al,(%rax)
	...
 1a6:	00 40 00             	add    %al,0x0(%rax)
	...
 1b5:	00 f0                	add    %dh,%al
 1b7:	3f                   	(bad)  
Method Test:.ctor () emitted as .Lm_0
Method Test:Main () emitted as .Lm_1
Code: 449 Info: 4 Ex Info: 6 Unwind Info: 18 Class Info: 30 PLT: 1 GOT Info: 5 GOT: 40 Offsets: 48
Compiled: 2/2 (100%), No GOT slots: 2 (100%), Direct calls: 0 (100%)
JIT time: 25 ms, Generation time: 0 ms, Assembly+Link time: 1 ms.
