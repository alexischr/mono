/* complex-type-intrinsics.c */

#include <config.h>
#include <stdio.h>

#define COMPLEX_ADD_METHOD "op_Addition"
#define COMPLEX_MULTIPLY_METHOD "op_Multiply"

MonoInst*
mono_emit_complex_intrinsics (MonoCompile *cfg, MonoMethod *cmethod, MonoMethodSignature *fsig, MonoInst **args)
{
	const char *class_name;

	if (strcmp ("System", cmethod->klass->name_space))
		return NULL;

	class_name = cmethod->klass->name;

	if (strcmp ("Complex", class_name))
		return NULL;

	if (!strcmp(COMPLEX_ADD_METHOD, cmethod->name))
		return emit_intrinsics (cfg, cmethod, fsig, args, vector2d_intrinsics, sizeof (vector2d_intrinsics) / sizeof (SimdIntrinsc));

	if (!strcmp(COMPLEX_MULTIPLY_METHOD, cmethod->name))
	{
		MonoInst* ins;
		int left_vreg, right_vreg, tmp_vreg, im1_vreg, im2_vreg;

		if (!(SIMD_VERSION_SSE3 & simd_supported_versions)) 
			return NULL;

		/*
			From Intel optimization manual SSE3 algorithm:

			movupd xmm0, [eax] ;y x
			movupd xmm1, [eax+16] ;z z
			movupd xmm2, xmm1
			unpcklpd xmm1, xmm1
			unpckhpd xmm2, xmm2
			mulpd xmm1, xmm0 ;z*y z*x
			mulpd xmm2, xmm0 ;w*y w*x
			shufpd xmm2, xmm2, 1 ;w*x w*y
			addsubpd xmm1, xmm2 ;w*x+z*y z*x-w*y
			movapd [ecx], xmm1
		*/

		left_vreg = get_simd_vreg_or_expanded_scalar (cfg, cmethod, args [0], 0); // y x
		right_vreg = get_simd_vreg_or_expanded_scalar (cfg, cmethod, args [1], 1); // w z


		MONO_INST_NEW (cfg, ins, OP_UNPACK_LOWPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = right_vreg;
		ins->sreg2 = right_vreg;
		ins->type = STACK_VTYPE;
		ins->dreg = tmp_vreg = alloc_ireg (cfg);

		MONO_ADD_INS (cfg->cbb, ins);	//tmp = z z

		 MONO_INST_NEW (cfg, ins, OP_MULPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = tmp_vreg;
		ins->sreg2 = left_vreg;
		ins->type = STACK_VTYPE;
		ins->dreg = im1_vreg = alloc_ireg (cfg); 

		MONO_ADD_INS (cfg->cbb, ins);	//im1_vreg = yz xz

		MONO_INST_NEW (cfg, ins, OP_UNPACK_HIGHPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = right_vreg;
		ins->sreg2 = right_vreg;
		ins->type = STACK_VTYPE;
		ins->dreg = tmp_vreg = alloc_ireg (cfg);

		MONO_ADD_INS (cfg->cbb, ins);	//tmp = w w  

		MONO_INST_NEW (cfg, ins, OP_MULPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = tmp_vreg;
		ins->sreg2 = left_vreg;
		ins->type = STACK_VTYPE;
		ins->dreg = im2_vreg = alloc_ireg (cfg); 
		MONO_ADD_INS (cfg->cbb, ins); 	//im2_vreg = yw xw

		EMIT_NEW_ICONST(cfg, ins, 1);

		MONO_INST_NEW (cfg, ins, OP_SHUFPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = im2_vreg;
		ins->sreg2 = im2_vreg;
		ins->inst_c0 = 1;
		ins->type = STACK_VTYPE;
		ins->dreg = im2_vreg = alloc_ireg (cfg);
		MONO_ADD_INS (cfg->cbb, ins);  //im2_vreg = xw yw

		MONO_INST_NEW (cfg, ins, OP_ADDSUBPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = im1_vreg;
		ins->sreg2 = im2_vreg;
		ins->type = STACK_VTYPE;
		ins->dreg = im1_vreg;
		MONO_ADD_INS (cfg->cbb, ins);  //xw + yz, yq -xz



/*
		MONO_INST_NEW (cfg, ins, OP_UNPACK_HIGHPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = temp_vreg;
		ins->sreg2 = right_vreg;
	ins->type = STACK_VTYPE;
		ins->dreg = right_vreg;

		MONO_ADD_INS (cfg->cbb, ins); */

		/* MONO_INST_NEW (cfg, ins, OP_MULPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = left_vreg;
		ins->sreg2 = right_vreg;

		ins->type = STACK_VTYPE;
		ins->dreg = right_vreg;

		MONO_ADD_INS (cfg->cbb, ins);

		MONO_INST_NEW (cfg, ins, OP_MULPD);
		ins->klass = cmethod->klass;
		ins->sreg1 = left_vreg;
		ins->sreg2 = temp_vreg;

		ins->type = STACK_VTYPE;
		ins->dreg = temp_vreg;

		MONO_ADD_INS (cfg->cbb, ins);

		*/
		return ins;

	}


	return NULL;

	// printf("System.Complex intrinsic method found\n");
	return emit_intrinsics (cfg, cmethod, fsig, args, vector2d_intrinsics, sizeof (vector2d_intrinsics) / sizeof (SimdIntrinsc));

}