using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task0191
    {
        public static int HammingWeight(int n)
        {
            if (n == 0) return 0;
            if (n == 1) return 1;

            string binary = Convert.ToString(n, 2);
            int sum = 0;
            foreach(char s in binary)
            {
                if(s == '1')
                {
                    sum++;
                }
            }

            return sum;
        }
    }
}
