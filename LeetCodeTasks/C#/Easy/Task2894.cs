using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task2894
    {
        public static int DifferenceOfSums(int n, int m)
        {
            int divisible = 0;
            int notDivisible = 0;

            for (int i = 1; i <= n; i++)
            {
                if (i % m == 0)
                {
                    divisible += i;
                } else if (i % m != 0)
                {
                    notDivisible += i;
                }
            }

            return notDivisible - divisible;
        }
    }
}
