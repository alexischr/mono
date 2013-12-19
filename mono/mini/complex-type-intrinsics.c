/* complex-type-intrinsics.c */

#include <config.h>
#include <stdio.h>

#define COMPLEX_ADD_METHOD SN_op_Addition
#define COMPLEX_MULTIPLY_METHOD SN_op_Multiply

MonoInst*
mono_emit_complex_intrinsics (MonoCompile *cfg, MonoMethod *cmethod, MonoMethodSignature *fsig, MonoInst **args)
{
	const char *class_name;

	if (strcmp ("System", cmethod->klass->name_space))
		return NULL;

	class_name = cmethod->klass->name;

	if (strcmp ("Complex", class_name))
		return NULL;

	printf("System.Complex op found\n");

	return emit_intrinsics (cfg, cmethod, fsig, args, vector2d_intrinsics, sizeof (vector2d_intrinsics) / sizeof (SimdIntrinsc));

}