using System.Runtime.CompilerServices;

namespace System {
	public class MonoExt {
		
		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		public extern int GetObjectAge(object obj);

		//private sta  tic  int GetObjectAge(object obj) { return 0;}	}
}
}