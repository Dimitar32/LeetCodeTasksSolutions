using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task2413
    {
        public static int SmallestEvenMultiple(int n)
        {
            return n % 2 == 0 ? n : n * 2;
        }
    }
}
