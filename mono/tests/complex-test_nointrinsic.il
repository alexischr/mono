.assembly extern mscorlib
{
  .ver 4:0:0:0
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 ) // .z\V.4..
}
.assembly 'complex-test'
{
  .custom instance void class [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::'.ctor'() =  (
		01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
		63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01       ) // ceptionThrows.

  .permissionset reqmin = {[mscorlib]System.Security.Permissions.SecurityPermissionAttribute = {property bool 'SkipVerification' = bool(true)}}
  .hash algorithm 0x00008004
  .ver  0:0:0:0
}
.module 'complex-test.exe' // GUID = {8B613447-EEEE-423F-B9CE-A79363606FAD}

.custom instance void class [mscorlib]System.Security.UnverifiableCodeAttribute::'.ctor'() =  (01 00 00 00 ) // ....


  .class public auto ansi beforefieldinit Test
  	extends [mscorlib]System.Object
  {

    // method line 1
    .method public hidebysig specialname rtspecialname 
           instance default void '.ctor' ()  cil managed 
    {
        // Method begins at RVA 0x2050
	// Code size 7 (0x7)
	.maxstack 8
	IL_0000:  ldarg.0 
	IL_0001:  call instance void object::'.ctor'()
	IL_0006:  ret 
    } // end of method Test::.ctor

    // method line 2
    .method public static hidebysig 
           default int32 Main ()  cil managed 
    {
        // Method begins at RVA 0x2058
	.entrypoint
	// Code size 178 (0xb2)
	.maxstack 3
	.locals init (
		valuetype [mscorlib]Complex	V_0,
		valuetype [mscorlib]Complex	V_1,
		valuetype [mscorlib]Complex	V_2,
		valuetype [mscorlib]Complex	V_3,
		int32	V_4)
	IL_0000:  nop 
	IL_0001:  ldloca.s 0
	IL_0003:  ldc.r8 1.
	IL_000c:  ldc.r8 2.
	IL_0015:  call instance void valuetype [mscorlib]Complex::'.ctor'(float64, float64)
	IL_001a:  ldloca.s 1
	IL_001c:  ldc.r8 3.
	IL_0025:  ldc.r8 4.
	IL_002e:  call instance void valuetype [mscorlib]Complex::'.ctor'(float64, float64)
	IL_0033:  ldloc.0 
	IL_0034:  ldloc.1 
	IL_0035:  call valuetype [mscorlib]Complex valuetype [mscorlib]Complex::op_Addition(valuetype [mscorlib]Complex, valuetype [mscorlib]Complex)
	IL_003a:  stloc.2 
	IL_003b:  ldloc.0 
	IL_003c:  ldloc.1 
	IL_003d:  call valuetype [mscorlib]Complex valuetype [mscorlib]Complex::op_Multiply(valuetype [mscorlib]Complex, valuetype [mscorlib]Complex)
	IL_0042:  stloc.3 
	IL_0043:  ldloca.s 2
	IL_0045:  ldfld float64 [mscorlib]Complex::a
	IL_004a:  ldc.r8 4.
	IL_0053:  bne.un IL_006d

	IL_0058:  ldloca.s 2
	IL_005a:  ldfld float64 [mscorlib]Complex::b
	IL_005f:  ldc.r8 6.
	IL_0068:  beq IL_0075

	IL_006d:  ldc.i4.m1 
	IL_006e:  stloc.s 4
	IL_0070:  br IL_00af

	IL_0075:  ldloca.s 3
	IL_0077:  ldfld float64 [mscorlib]Complex::a
	IL_007c:  ldc.r8 3.
	IL_0085:  bne.un IL_009f

	IL_008a:  ldloca.s 3
	IL_008c:  ldfld float64 [mscorlib]Complex::b
	IL_0091:  ldc.r8 8.
	IL_009a:  beq IL_00a7

	IL_009f:  ldc.i4.m1 
	IL_00a0:  stloc.s 4
	IL_00a2:  br IL_00af

	IL_00a7:  ldc.i4.0 
	IL_00a8:  stloc.s 4
	IL_00aa:  br IL_00af

	IL_00af:  ldloc.s 4
	IL_00b1:  ret 
    } // end of method Test::Main

  } // end of class Test

