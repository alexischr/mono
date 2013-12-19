using System.Runtime.CompilerServices;

namespace System {
	public class MonoExt {
		
		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		public extern int GetObjectAge(object obj);
	}
}