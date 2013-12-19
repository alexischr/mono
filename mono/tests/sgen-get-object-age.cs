using System;
using System.Reflection;

public class Test
{
	public static int Main ()
	{

		string interned_string = "interned string";
		String.Intern(interned_string);

		string non_interned_string = "non-interned" + "string " + DateTime.Now.ToString();

		var monoExt = new MonoExt();

		Console.WriteLine("non_interned_string age #1: " + monoExt.GetObjectAge (non_interned_string).ToString () );
		DateTime a_datetime = new DateTime(2000,1,1); 

		
		GC.Collect();
		GC.WaitForPendingFinalizers();

		var object1 = new object();

		GC.Collect();
		GC.WaitForPendingFinalizers();

		var object2 = new object();

		Console.WriteLine("a_datetime age: " + monoExt.GetObjectAge (a_datetime).ToString ()); //FIX
		Console.WriteLine("intern string age: " + monoExt.GetObjectAge (interned_string).ToString () );
		Console.WriteLine("non_interned_string age #2: " + monoExt.GetObjectAge (non_interned_string).ToString () ); //FIX
		Console.WriteLine("object1 age: " + monoExt.GetObjectAge (object1).ToString () );
		Console.WriteLine("object2 age: " + monoExt.GetObjectAge (object2).ToString () );
 
		return 0;
	}
}
