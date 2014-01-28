// Complex.cs
using System.Runtime.InteropServices;
using Mono.Simd

namespace System 
{

	[StructLayout(LayoutKind.Explicit, Pack = 0, Size = 16)]		
	public struct Complex
	{
		[ FieldOffset(0) ] 
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
				double real_part = (obj1.a * obj2.a) - (obj1.b * obj2.b);
				double imag_part = (obj1.a * obj2.b) + (obj1.b * obj2.a);
				
				return new Complex (real_part, imag_part);
		}

			
	}
}