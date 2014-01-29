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
Method Test:.ctor () emitted at 0x406ccb40 to 0x406ccb49 (code length 9) [complex-test.exe]

/tmp/.oMITWx:     file format elf64-x86-64


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
	 ldaddr R66 <- R17
	GEN: R17(1)
	 i8const R67 <- [0]
	 storei8_membase_reg [R66] <- R67
	 storei8_membase_reg [R66 + 0x8] <- R67
	 ldaddr R68 <- R18
	GEN: R18(2)
	 i8const R69 <- [0]
	 storei8_membase_reg [R68] <- R69
	 storei8_membase_reg [R68 + 0x8] <- R69
	 ldaddr R70 <- R19
	GEN: R19(3)
	 i8const R71 <- [0]
	 storei8_membase_reg [R70] <- R71
	 storei8_membase_reg [R70 + 0x8] <- R71
	 ldaddr R72 <- R20
	GEN: R20(4)
	 i8const R73 <- [0]
	 storei8_membase_reg [R72] <- R73
	 storei8_membase_reg [R72 + 0x8] <- R73
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
	 ldaddr R74 <- R17
	GEN: R17(1)
	 ldaddr R75 <- R41
	GEN: R41(5)
	 loadi8_membase R76 <- [R74 + 0x0]
	 storei8_membase_reg [R75] <- R76
	 loadi8_membase R77 <- [R74 + 0x8]
	 storei8_membase_reg [R75 + 0x8] <- R77
	 ldaddr R78 <- R18
	GEN: R18(2)
	 ldaddr R79 <- R42
	GEN: R42(6)
	 loadi8_membase R80 <- [R78 + 0x0]
	 storei8_membase_reg [R79] <- R80
	 loadi8_membase R81 <- [R78 + 0x8]
	 storei8_membase_reg [R79 + 0x8] <- R81
	 ldaddr R44 <- R19
	GEN: R19(3)
	 ldaddr R83 <- R42
	GEN: R42(6)
	 load_membase R84 <- [R83 + 0x0]
	 move R85 <- R84
	 load_membase R86 <- [R83 + 0x8]
	 move R87 <- R86
	 ldaddr R88 <- R41
	GEN: R41(5)
	 load_membase R89 <- [R88 + 0x0]
	 move R90 <- R89
	 load_membase R91 <- [R88 + 0x8]
	 move R92 <- R91
	 move R45 <- R44
	 vcall2 [System.Complex:op_Addition (System.Complex,System.Complex)] [%rdi <- R45] [%rcx <- R85] [%r8 <- R87] [%rsi <- R90] [%rdx <- R92] clobbers: c
	 ldaddr R93 <- R17
	GEN: R17(1)
	 ldaddr R94 <- R46
	GEN: R46(7)
	 loadi8_membase R95 <- [R93 + 0x0]
	 storei8_membase_reg [R94] <- R95
	 loadi8_membase R96 <- [R93 + 0x8]
	 storei8_membase_reg [R94 + 0x8] <- R96
	 ldaddr R97 <- R18
	GEN: R18(2)
	 ldaddr R98 <- R47
	GEN: R47(8)
	 loadi8_membase R99 <- [R97 + 0x0]
	 storei8_membase_reg [R98] <- R99
	 loadi8_membase R100 <- [R97 + 0x8]
	 storei8_membase_reg [R98 + 0x8] <- R100
	 ldaddr R49 <- R20
	GEN: R20(4)
	 ldaddr R102 <- R47
	GEN: R47(8)
	 load_membase R103 <- [R102 + 0x0]
	 move R104 <- R103
	 load_membase R105 <- [R102 + 0x8]
	 move R106 <- R105
	 ldaddr R107 <- R46
	GEN: R46(7)
	 load_membase R108 <- [R107 + 0x0]
	 move R109 <- R108
	 load_membase R110 <- [R107 + 0x8]
	 move R111 <- R110
	 move R50 <- R49
	 vcall2 [System.Complex:op_Multiply (System.Complex,System.Complex)] [%rdi <- R50] [%rcx <- R104] [%r8 <- R106] [%rsi <- R109] [%rdx <- R111] clobbers: c
	 ldaddr R51 <- R19
	GEN: R19(3)
	 loadr8_membase R52 <- [R51 + 0x0]
	 r8const R53 <- [4.000000]
	 fcompare R52 R53 clobbers: a
	 float_bne_un
GEN  BB3: {1, 2, 3, 4, 5, 6, 7, 8}
KILL BB3: {}
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
	 ldaddr R54 <- R19
	GEN: R19(3)
	 loadr8_membase R55 <- [R54 + 0x8]
	 r8const R56 <- [6.000000]
	 fcompare R55 R56 clobbers: a
	 float_beq
GEN  BB5: {3}
KILL BB5: {}
BLOCK BB6 (BB7, BB8, ):
	 ldaddr R58 <- R20
	GEN: R20(4)
	 loadr8_membase R59 <- [R58 + 0x0]
	 r8const R60 <- [-5.000000]
	 fcompare R59 R60 clobbers: a
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
	 ldaddr R61 <- R20
	GEN: R20(4)
	 loadr8_membase R62 <- [R61 + 0x8]
	 r8const R63 <- [10.000000]
	 fcompare R62 R63 clobbers: a
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
	LIVE IN  BB3: {1, 2, 3, 4, 5, 6, 7, 8}
P: BB0(0): IN: OUT:BB3 
	LIVE IN  BB0: {1, 2, 3, 4, 5, 6, 7, 8}
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
LIVE IN  BB3: {1, 2, 3, 4, 5, 6, 7, 8}
LIVE OUT BB3: {3, 4}
LIVE IN  BB0: {1, 2, 3, 4, 5, 6, 7, 8}
LIVE OUT BB0: {1, 2, 3, 4, 5, 6, 7, 8}
V0: [0x0 - 0x80001]
V1: [0x0 - 0x10066]
V2: [0x0 - 0x10072]
V3: [0x0 - 0x40000]
V4: [0x0 - 0x70000]
V5: [0x0 - 0x10058]
V6: [0x0 - 0x1004e]
V7: [0x0 - 0x1008a]
V8: [0x0 - 0x10080]
LIVENESS 2 Test:Main ()
LIVENESS BLOCK BB9:
	80002:  iconst R16 <- [0]
	add range to R16: [80002, 8ffff)
LIVENESS BLOCK BB8:
	70006:  float_beq
	70005:  fcompare R62 R63 clobbers: a
	70004:  r8const R63 <- [10.000000]
	70003:  loadr8_membase R62 <- [R61 + 0x8]
	70002:  ldaddr R61 <- R20
Var R16 live at enter, add range to R16: [70001, 80001)
LIVENESS BLOCK BB7:
	60003:  br [B1]
	60002:  iconst R16 <- [-1]
	add range to R16: [60002, 70001)
LIVENESS BLOCK BB6:
Var R20 live at exit, set last_use to 60001
	50006:  float_bne_un
	50005:  fcompare R59 R60 clobbers: a
	50004:  r8const R60 <- [-5.000000]
	50003:  loadr8_membase R59 <- [R58 + 0x0]
	50002:  ldaddr R58 <- R20
Var R16 live at enter, add range to R16: [50001, 60001)
Var R20 live at enter, add range to R20: [50001, 60001)
LIVENESS BLOCK BB5:
Var R20 live at exit, set last_use to 50001
	40006:  float_beq
	40005:  fcompare R55 R56 clobbers: a
	40004:  r8const R56 <- [6.000000]
	40003:  loadr8_membase R55 <- [R54 + 0x8]
	40002:  ldaddr R54 <- R19
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
	10052:  float_bne_un
	10051:  fcompare R52 R53 clobbers: a
	10050:  r8const R53 <- [4.000000]
	1004f:  loadr8_membase R52 <- [R51 + 0x0]
	1004e:  ldaddr R51 <- R19
	1004d:  vcall2 [System.Complex:op_Multiply (System.Complex,System.Complex)] [%rdi <- R50] [%rcx <- R104] [%r8 <- R106] [%rsi <- R109] [%rdx <- R111] clobbers: c
	1004c:  move R50 <- R49
	1004b:  move R111 <- R110
	1004a:  load_membase R110 <- [R107 + 0x8]
	10049:  move R109 <- R108
	10048:  load_membase R108 <- [R107 + 0x0]
	10047:  ldaddr R107 <- R46
	10046:  move R106 <- R105
	10045:  load_membase R105 <- [R102 + 0x8]
	10044:  move R104 <- R103
	10043:  load_membase R103 <- [R102 + 0x0]
	10042:  ldaddr R102 <- R47
	10041:  ldaddr R49 <- R20
	10040:  storei8_membase_reg [R98 + 0x8] <- R100
	1003f:  loadi8_membase R100 <- [R97 + 0x8]
	1003e:  storei8_membase_reg [R98] <- R99
	1003d:  loadi8_membase R99 <- [R97 + 0x0]
	1003c:  ldaddr R98 <- R47
	1003b:  ldaddr R97 <- R18
	1003a:  storei8_membase_reg [R94 + 0x8] <- R96
	10039:  loadi8_membase R96 <- [R93 + 0x8]
	10038:  storei8_membase_reg [R94] <- R95
	10037:  loadi8_membase R95 <- [R93 + 0x0]
	10036:  ldaddr R94 <- R46
	10035:  ldaddr R93 <- R17
	10034:  vcall2 [System.Complex:op_Addition (System.Complex,System.Complex)] [%rdi <- R45] [%rcx <- R85] [%r8 <- R87] [%rsi <- R90] [%rdx <- R92] clobbers: c
	10033:  move R45 <- R44
	10032:  move R92 <- R91
	10031:  load_membase R91 <- [R88 + 0x8]
	10030:  move R90 <- R89
	1002f:  load_membase R89 <- [R88 + 0x0]
	1002e:  ldaddr R88 <- R41
	1002d:  move R87 <- R86
	1002c:  load_membase R86 <- [R83 + 0x8]
	1002b:  move R85 <- R84
	1002a:  load_membase R84 <- [R83 + 0x0]
	10029:  ldaddr R83 <- R42
	10028:  ldaddr R44 <- R19
	10027:  storei8_membase_reg [R79 + 0x8] <- R81
	10026:  loadi8_membase R81 <- [R78 + 0x8]
	10025:  storei8_membase_reg [R79] <- R80
	10024:  loadi8_membase R80 <- [R78 + 0x0]
	10023:  ldaddr R79 <- R42
	10022:  ldaddr R78 <- R18
	10021:  storei8_membase_reg [R75 + 0x8] <- R77
	10020:  loadi8_membase R77 <- [R74 + 0x8]
	1001f:  storei8_membase_reg [R75] <- R76
	1001e:  loadi8_membase R76 <- [R74 + 0x0]
	1001d:  ldaddr R75 <- R41
	1001c:  ldaddr R74 <- R17
	1001b:  storer8_membase_reg [R31 + 0x8] <- R40
	1001a:  r8const R40 <- [4.000000]
	10019:  storer8_membase_reg [R31] <- R38
	10018:  r8const R38 <- [3.000000]
	10017:  ldaddr R31 <- R18
	10016:  storer8_membase_reg [R21 + 0x8] <- R30
	10015:  r8const R30 <- [2.000000]
	10014:  storer8_membase_reg [R21] <- R28
	10013:  r8const R28 <- [1.000000]
	10012:  ldaddr R21 <- R17
	10011:  storei8_membase_reg [R72 + 0x8] <- R73
	10010:  storei8_membase_reg [R72] <- R73
	1000f:  i8const R73 <- [0]
	1000e:  ldaddr R72 <- R20
	1000d:  storei8_membase_reg [R70 + 0x8] <- R71
	1000c:  storei8_membase_reg [R70] <- R71
	1000b:  i8const R71 <- [0]
	1000a:  ldaddr R70 <- R19
	10009:  storei8_membase_reg [R68 + 0x8] <- R69
	10008:  storei8_membase_reg [R68] <- R69
	10007:  i8const R69 <- [0]
	10006:  ldaddr R68 <- R18
	10005:  storei8_membase_reg [R66 + 0x8] <- R67
	10004:  storei8_membase_reg [R66] <- R67
	10003:  i8const R67 <- [0]
	10002:  ldaddr R66 <- R17
Var R16 live at enter, add range to R16: [10001, 20001)
Var R19 live at enter, add range to R19: [10001, 20001)
Var R20 live at enter, add range to R20: [10001, 20001)
LIVENESS BLOCK BB0:
Var R17 live at exit, set last_use to 10001
Var R18 live at exit, set last_use to 10001
Var R19 live at exit, set last_use to 10001
Var R20 live at exit, set last_use to 10001
Var R41 live at exit, set last_use to 10001
Var R42 live at exit, set last_use to 10001
Var R46 live at exit, set last_use to 10001
Var R47 live at exit, set last_use to 10001
Var R16 live at enter, add range to R16: [1, 10001)
Var R17 live at enter, add range to R17: [1, 10001)
Var R18 live at enter, add range to R18: [1, 10001)
Var R19 live at enter, add range to R19: [1, 10001)
Var R20 live at enter, add range to R20: [1, 10001)
Var R41 live at enter, add range to R41: [1, 10001)
Var R42 live at enter, add range to R42: [1, 10001)
Var R46 live at enter, add range to R46: [1, 10001)
Var R47 live at enter, add range to R47: [1, 10001)
Method Test:Main () emitted at 0x406ccb50 to 0x406ccd48 (code length 504) [complex-test.exe]

/tmp/.8YxFUM:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <t_Main>:
<BB>:3
   0:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
   7:	33 c0                	xor    %eax,%eax
   9:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
   e:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  13:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
  18:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  1d:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
  22:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  27:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
  2c:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
  31:	f2 0f 10 05 b7 01 00 	movsd  0x1b7(%rip),%xmm0        # 1f0 <t_Main+0x1f0>
  38:	00 
  39:	f2 0f 11 44 24 70    	movsd  %xmm0,0x70(%rsp)
  3f:	f2 0f 10 05 99 01 00 	movsd  0x199(%rip),%xmm0        # 1e0 <t_Main+0x1e0>
  46:	00 
  47:	f2 0f 11 44 24 78    	movsd  %xmm0,0x78(%rsp)
  4d:	f2 0f 10 05 7b 01 00 	movsd  0x17b(%rip),%xmm0        # 1d0 <t_Main+0x1d0>
  54:	00 
  55:	f2 0f 11 44 24 60    	movsd  %xmm0,0x60(%rsp)
  5b:	f2 0f 10 05 5d 01 00 	movsd  0x15d(%rip),%xmm0        # 1c0 <t_Main+0x1c0>
  62:	00 
  63:	f2 0f 11 44 24 68    	movsd  %xmm0,0x68(%rsp)
  69:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  6e:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  73:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
  78:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
  7d:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  82:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  87:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  8c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  91:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
  96:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
  9b:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
  a0:	48 8b 74 24 30       	mov    0x30(%rsp),%rsi
  a5:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
  aa:	e8 01 32 bf fd       	callq  fffffffffdbf32b0 <t_Main+0xfffffffffdbf32b0>
  af:	48 8b 44 24 70       	mov    0x70(%rsp),%rax
  b4:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  b9:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
  be:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  c3:	48 8b 44 24 60       	mov    0x60(%rsp),%rax
  c8:	48 89 04 24          	mov    %rax,(%rsp)
  cc:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  d1:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  d6:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  db:	48 8b 0c 24          	mov    (%rsp),%rcx
  df:	4c 8b 44 24 08       	mov    0x8(%rsp),%r8
  e4:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
  e9:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
  ee:	e8 bd 31 bf fd       	callq  fffffffffdbf32b0 <t_Main+0xfffffffffdbf32b0>
  f3:	f2 0f 10 44 24 50    	movsd  0x50(%rsp),%xmm0
  f9:	f2 0f 10 0d af 00 00 	movsd  0xaf(%rip),%xmm1        # 1b0 <t_Main+0x1b0>
 100:	00 
 101:	66 0f 2f c8          	comisd %xmm0,%xmm1
 105:	0f 85 22 00 00 00    	jne    12d <t_Main+0x12d>
 10b:	0f 8a 1c 00 00 00    	jp     12d <t_Main+0x12d>
 111:	0f 82 16 00 00 00    	jb     12d <t_Main+0x12d>
<BB>:5
 117:	f2 0f 10 44 24 58    	movsd  0x58(%rsp),%xmm0
 11d:	f2 0f 10 0d 7b 00 00 	movsd  0x7b(%rip),%xmm1        # 1a0 <t_Main+0x1a0>
 124:	00 
 125:	66 0f 2f c8          	comisd %xmm0,%xmm1
 129:	7a 02                	jp     12d <t_Main+0x12d>
 12b:	74 0f                	je     13c <t_Main+0x13c>
<BB>:4
 12d:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffffffff,%rax
 134:	ff ff ff 
 137:	e9 3c 00 00 00       	jmpq   178 <t_Main+0x178>
<BB>:6
 13c:	f2 0f 10 44 24 40    	movsd  0x40(%rsp),%xmm0
 142:	f2 0f 10 0d 46 00 00 	movsd  0x46(%rip),%xmm1        # 190 <t_Main+0x190>
 149:	00 
 14a:	66 0f 2f c8          	comisd %xmm0,%xmm1
 14e:	75 1a                	jne    16a <t_Main+0x16a>
 150:	7a 18                	jp     16a <t_Main+0x16a>
 152:	72 16                	jb     16a <t_Main+0x16a>
<BB>:8
 154:	f2 0f 10 44 24 48    	movsd  0x48(%rsp),%xmm0
 15a:	f2 0f 10 0d 1e 00 00 	movsd  0x1e(%rip),%xmm1        # 180 <t_Main+0x180>
 161:	00 
 162:	66 0f 2f c8          	comisd %xmm0,%xmm1
 166:	7a 02                	jp     16a <t_Main+0x16a>
 168:	74 0c                	je     176 <t_Main+0x176>
<BB>:7
 16a:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffffffff,%rax
 171:	ff ff ff 
 174:	eb 02                	jmp    178 <t_Main+0x178>
<BB>:9
 176:	33 c0                	xor    %eax,%eax
<BB>:1
 178:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
 17f:	c3                   	retq   
 180:	00 00                	add    %al,(%rax)
 182:	00 00                	add    %al,(%rax)
 184:	00 00                	add    %al,(%rax)
 186:	24 40                	and    $0x40,%al
	...
 194:	00 00                	add    %al,(%rax)
 196:	14 c0                	adc    $0xc0,%al
	...
 1a4:	00 00                	add    %al,(%rax)
 1a6:	18 40 00             	sbb    %al,0x0(%rax)
	...
 1b5:	00 10                	add    %dl,(%rax)
 1b7:	40 00 00             	add    %al,(%rax)
	...
 1c6:	10 40 00             	adc    %al,0x0(%rax)
	...
 1d5:	00 08                	add    %cl,(%rax)
 1d7:	40 00 00             	add    %al,(%rax)
	...
 1e6:	00 40 00             	add    %al,0x0(%rax)
	...
 1f5:	00 f0                	add    %dh,%al
 1f7:	3f                   	(bad)  
Method Test:.ctor () emitted as .Lm_0
Method Test:Main () emitted as .Lm_1
Code: 513 Info: 4 Ex Info: 6 Unwind Info: 19 Class Info: 30 PLT: 3 GOT Info: 15 GOT: 56 Offsets: 48
Compiled: 2/2 (100%), No GOT slots: 2 (100%), Direct calls: 0 (100%)
JIT time: 27 ms, Generation time: 0 ms, Assembly+Link time: 1 ms.
