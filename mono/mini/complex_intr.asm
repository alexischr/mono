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
Method Test:.ctor () emitted at 0x40be5b40 to 0x40be5b49 (code length 9) [complex-test.exe]

/tmp/.q6Dg6U:     file format elf64-x86-64


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
BLOCK BB3 (BB1, ):
	 xzero R17 <-
	KILL: R17(1)
	 xzero R18 <-
	KILL: R18(2)
	 xzero R19 <-
	KILL: R19(3)
	 ldaddr R20 <- R17
	GEN: R17(1)
	 r8const R27 <- [1.000000]
	 storer8_membase_reg [R20] <- R27
	 r8const R29 <- [2.000000]
	 storer8_membase_reg [R20 + 0x8] <- R29
	 ldaddr R30 <- R18
	GEN: R18(2)
	 r8const R37 <- [3.000000]
	 storer8_membase_reg [R30] <- R37
	 r8const R39 <- [4.000000]
	 storer8_membase_reg [R30 + 0x8] <- R39
	 unpack_lowpd R42 <- R18 R18 clobbers: 1
	GEN: R18(2)
	GEN: R18(2)
	 mulpd R43 <- R42 R17 clobbers: 1
	GEN: R17(1)
	 unpack_highpd R44 <- R18 R18 clobbers: 1
	GEN: R18(2)
	GEN: R18(2)
	 mulpd R45 <- R44 R17 clobbers: 1
	GEN: R17(1)
	 shufpd R47 <- R45 R45 clobbers: 1
	 addsubpd R19 <- R43 R47 clobbers: 1
	KILL: R19(3)
	 aot_const R48 <-
	 ldaddr R49 <- R19
	GEN: R19(3)
	 loadr8_membase R50 <- [R49 + 0x0]
	 aot_const R53 <-
	 call R52 <- [(wrapper alloc) object:AllocSmall (intptr)] [%rdi <- R53] clobbers: c
	 storer8_membase_reg [R52 + 0x10] <- R50
	 ldaddr R54 <- R19
	GEN: R19(3)
	 loadr8_membase R55 <- [R54 + 0x8]
	 aot_const R58 <-
	 call R57 <- [(wrapper alloc) object:AllocSmall (intptr)] [%rdi <- R58] clobbers: c
	 storer8_membase_reg [R57 + 0x10] <- R55
	 move R59 <- R48
	 move R60 <- R52
	 move R61 <- R57
	 voidcall [System.Console:WriteLine (string,object,object)] [%rdi <- R59] [%rsi <- R60] [%rdx <- R61] clobbers: c
	 iconst R16 <- [0]
	KILL: R16(0)
GEN  BB3: {}
KILL BB3: {0, 1, 2, 3}
BLOCK BB1 ():
GEN  BB1: {}
KILL BB1: {}

ITERATION:
P: BB1(2): IN: BB3 OUT:
P: BB3(1): IN: BB0 OUT:BB1 
	LIVE IN  BB3: {}
P: BB0(0): IN: OUT:BB3 
	LIVE IN  BB0: {}
IT: 3 2.
LIVE IN  BB1: {}
LIVE OUT BB1: {}
LIVE IN  BB3: {}
LIVE OUT BB3: {}
LIVE IN  BB0: {}
LIVE OUT BB0: {}
V0: [0x0 - 0x10045]
V1: [0x10001 - 0x10020]
V2: [0x10003 - 0x1001e]
V3: [0x10005 - 0x10032]
LIVENESS 2 Test:Main ()
LIVENESS BLOCK BB1:
Var R16 live at enter, add range to R16: [20001, 2ffff)
LIVENESS BLOCK BB3:
	10024:  iconst R16 <- [0]
	add range to R16: [10024, 20001)
	10023:  voidcall [System.Console:WriteLine (string,object,object)] [%rdi <- R59] [%rsi <- R60] [%rdx <- R61] clobbers: c
	10022:  move R61 <- R57
	10021:  move R60 <- R52
	10020:  move R59 <- R48
	1001f:  storer8_membase_reg [R57 + 0x10] <- R55
	1001e:  call R57 <- [(wrapper alloc) object:AllocSmall (intptr)] [%rdi <- R58] clobbers: c
	1001d:  aot_const R58 <-
	1001c:  loadr8_membase R55 <- [R54 + 0x8]
	1001b:  ldaddr R54 <- R19
	1001a:  storer8_membase_reg [R52 + 0x10] <- R50
	10019:  call R52 <- [(wrapper alloc) object:AllocSmall (intptr)] [%rdi <- R53] clobbers: c
	10018:  aot_const R53 <-
	10017:  loadr8_membase R50 <- [R49 + 0x0]
	10016:  ldaddr R49 <- R19
	10015:  aot_const R48 <-
	10014:  addsubpd R19 <- R43 R47 clobbers: 1
	dead def of R19, add range to R19: [10014, 10015]
	10013:  shufpd R47 <- R45 R45 clobbers: 1
	10012:  mulpd R45 <- R44 R17 clobbers: 1
	last use of R17 set to 10012
	10011:  unpack_highpd R44 <- R18 R18 clobbers: 1
	last use of R18 set to 10011
	10010:  mulpd R43 <- R42 R17 clobbers: 1
	1000f:  unpack_lowpd R42 <- R18 R18 clobbers: 1
	1000e:  storer8_membase_reg [R30 + 0x8] <- R39
	1000d:  r8const R39 <- [4.000000]
	1000c:  storer8_membase_reg [R30] <- R37
	1000b:  r8const R37 <- [3.000000]
	1000a:  ldaddr R30 <- R18
	10009:  storer8_membase_reg [R20 + 0x8] <- R29
	10008:  r8const R29 <- [2.000000]
	10007:  storer8_membase_reg [R20] <- R27
	10006:  r8const R27 <- [1.000000]
	10005:  ldaddr R20 <- R17
	10004:  xzero R19 <-
	dead def of R19, add range to R19: [10004, 10005]
	10003:  xzero R18 <-
	add range to R18: [10003, 10011)
	10002:  xzero R17 <-
	add range to R17: [10002, 10012)
LIVENESS BLOCK BB0:
Var R16 live at enter, add range to R16: [1, 10001)
Method Test:Main () emitted at 0x40be5b50 to 0x40be5c88 (code length 312) [complex-test.exe]

/tmp/.5edCK2:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <t_Main>:
<BB>:3
   0:	48 83 ec 58          	sub    $0x58,%rsp
   4:	66 0f ef c0          	pxor   %xmm0,%xmm0
   8:	0f 11 04 24          	movups %xmm0,(%rsp)
   c:	66 0f ef c0          	pxor   %xmm0,%xmm0
  10:	0f 11 44 24 10       	movups %xmm0,0x10(%rsp)
  15:	66 0f ef c0          	pxor   %xmm0,%xmm0
  19:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
  1e:	f2 0f 10 05 0a 01 00 	movsd  0x10a(%rip),%xmm0        # 130 <t_Main+0x130>
  25:	00 
  26:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  2b:	f2 0f 10 05 ed 00 00 	movsd  0xed(%rip),%xmm0        # 120 <t_Main+0x120>
  32:	00 
  33:	f2 0f 11 44 24 08    	movsd  %xmm0,0x8(%rsp)
  39:	f2 0f 10 05 cf 00 00 	movsd  0xcf(%rip),%xmm0        # 110 <t_Main+0x110>
  40:	00 
  41:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
  47:	f2 0f 10 05 b1 00 00 	movsd  0xb1(%rip),%xmm0        # 100 <t_Main+0x100>
  4e:	00 
  4f:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
  55:	0f 10 44 24 10       	movups 0x10(%rsp),%xmm0
  5a:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  5f:	66 0f 14 c1          	unpcklpd %xmm1,%xmm0
  63:	0f 10 0c 24          	movups (%rsp),%xmm1
  67:	66 0f 59 c1          	mulpd  %xmm1,%xmm0
  6b:	0f 10 4c 24 10       	movups 0x10(%rsp),%xmm1
  70:	0f 10 54 24 10       	movups 0x10(%rsp),%xmm2
  75:	66 0f 15 ca          	unpckhpd %xmm2,%xmm1
  79:	0f 10 14 24          	movups (%rsp),%xmm2
  7d:	66 0f 59 ca          	mulpd  %xmm2,%xmm1
  81:	66 0f c6 c9 01       	shufpd $0x1,%xmm1,%xmm1
  86:	66 0f d0 c1          	addsubpd %xmm1,%xmm0
  8a:	0f 11 44 24 20       	movups %xmm0,0x20(%rsp)
  8f:	49 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 96 <t_Main+0x96>
  96:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  9b:	f2 0f 10 44 24 20    	movsd  0x20(%rsp),%xmm0
  a1:	f2 0f 11 44 24 48    	movsd  %xmm0,0x48(%rsp)
  a7:	49 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # ae <t_Main+0xae>
  ae:	e8 5d 02 9b fd       	callq  fffffffffd9b0310 <t_Main+0xfffffffffd9b0310>
  b3:	f2 0f 10 44 24 48    	movsd  0x48(%rsp),%xmm0
  b9:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
  be:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  c3:	f2 0f 10 44 24 28    	movsd  0x28(%rsp),%xmm0
  c9:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
  cf:	49 8b 3d 00 00 00 00 	mov    0x0(%rip),%rdi        # d6 <t_Main+0xd6>
  d6:	e8 35 02 9b fd       	callq  fffffffffd9b0310 <t_Main+0xfffffffffd9b0310>
  db:	48 8b d0             	mov    %rax,%rdx
  de:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  e3:	48 8b 7c 24 38       	mov    0x38(%rsp),%rdi
  e8:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
  ee:	f2 0f 11 42 10       	movsd  %xmm0,0x10(%rdx)
  f3:	e8 18 02 9b fd       	callq  fffffffffd9b0310 <t_Main+0xfffffffffd9b0310>
  f8:	33 c0                	xor    %eax,%eax
<BB>:1
  fa:	48 83 c4 58          	add    $0x58,%rsp
  fe:	c3                   	retq   
  ff:	00 00                	add    %al,(%rax)
 101:	00 00                	add    %al,(%rax)
 103:	00 00                	add    %al,(%rax)
 105:	00 10                	add    %dl,(%rax)
 107:	40 00 00             	add    %al,(%rax)
	...
 116:	08 40 00             	or     %al,0x0(%rax)
	...
 125:	00 00                	add    %al,(%rax)
 127:	40 00 00             	add    %al,(%rax)
	...
 136:	f0 3f                	lock (bad) 
Method Test:.ctor () emitted as .Lm_0
Method Test:Main () emitted as .Lm_1
Code: 321 Info: 7 Ex Info: 6 Unwind Info: 18 Class Info: 30 PLT: 3 GOT Info: 26 GOT: 72 Offsets: 50
Compiled: 2/2 (100%), No GOT slots: 1 (50%), Direct calls: 0 (100%)
JIT time: 190 ms, Generation time: 1 ms, Assembly+Link time: 42 ms.
