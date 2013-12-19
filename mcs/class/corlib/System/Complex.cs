// Complex.cs
using System.Runtime.InteropServices;

namespace System 
{

	[StructLayout(LayoutKind.Explicit, Pack = 0, Size = 16)]		
	public struct Complex
	{
		[ FieldOffset(0) ] //match SIMD vector2d structure so we can reuse the already existing 
		public double a;
		[ FieldOffset(8) ]
		public double b;
		
		public Complex (double a, double b)
		{
			this.a = a;
			this.b = b;
		}

		//this will be inlined 
		public static Complex operator + (Complex obj1, Complex obj2)
		{
				return new Complex (obj1.a + obj2.a , obj1.b + obj2.b);
		}

		//this will be inlined 
		public static Complex operator * (Complex obj1, Complex obj2)
		{
				return new Complex (obj1.a * obj2.a , obj1.b * obj2.b);
		}

			
	}
}