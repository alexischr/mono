/* complex-test.cs */

using System;

public class Test
{
	public static int Main()
	{
		Complex obj1 = new Complex(1,2);
		Complex obj2 = new Complex(3,4);

		Complex objSum = obj1 + obj2;
		Complex objMul = obj1 * obj2;

		if (objSum.a != 4 || objSum.b != 6)
			return -1;

		if (objMul.a != 3 || objMul.b != 8)
			return -1;

		return 0;
	}
}