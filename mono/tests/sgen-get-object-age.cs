using System;
using System.Reflection;

public class Test
{
    public struct test_struct 
    {
        int x;
        double y;
    }

    public class TestClass
    {
        public string X { get; set; }
        public string Y { get; set; }
}

    TestClass test_class1  = new TestClass(); 
    object test_class2;

    public  int InstanceMethod()
    {
        test_class2 = new TestClass();

        string interned_string = "interned string";
        String.Intern(interned_string);

        string non_interned_string = "non-interned" + "string " + DateTime.Now.ToString();

        var monoExt = new MonoExt();

        Console.WriteLine("non_interned_string age #1: " + monoExt.GetObjectAge (non_interned_string).ToString () );
                
        GC.Collect();
        GC.WaitForPendingFinalizers();

        var object1 = new object();

        GC.Collect();
        GC.WaitForPendingFinalizers();

        var object2 = new object();

        Console.WriteLine("test_class1 age:  " + monoExt.GetObjectAge (test_class1).ToString ()); 
        Console.WriteLine("test_class2 age:  " + monoExt.GetObjectAge (test_class2).ToString ()); 
        Console.WriteLine("interned_string age:" + monoExt.GetObjectAge (interned_string).ToString () );
        Console.WriteLine("non_interned_string age #2: " + monoExt.GetObjectAge (non_interned_string).ToString () ); //FIX
        Console.WriteLine("object1 age: " + monoExt.GetObjectAge (object1).ToString () );
        Console.WriteLine("object2 age: " + monoExt.GetObjectAge (object2).ToString () );
        Console.WriteLine("typeof (Test) age: " + monoExt.GetObjectAge (typeof (Test)).ToString () );

        return 0;
    }


    public static int Main ()
    {
        return new Test().InstanceMethod();
    }
}
