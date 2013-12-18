using System;
using System.Reflection;

public class Test
{
	public static int Main ()
	{
		/*var t = Type.GetType("System.MonoExt");
		if (t == null)
			return 1;
		var getObjectAge = (Func<object,int>) Delegate.CreateDelegate(typeof(Func<object,int>),
											   t,
											   "GetObjectAge",
											   ignoreCase:false,
											   throwOnBindFailure:true);
		if (getObjectAge == null)
			return 1;

		int age = getObjectAge(t);

		return age;*/

		var monoExt = new MonoExt();
		var new_object = new object();

		return monoExt.GetObjectAge(new_object);
	}
}
