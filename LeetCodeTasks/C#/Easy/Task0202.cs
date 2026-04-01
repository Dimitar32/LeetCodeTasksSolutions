using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task0202
    {
        public static bool IsHappy(int n)
        {
            int r = n;
            while (r != 1)
            {
                int sum = 0;
                List<int> digits = r.ToString().Select(c => int.Parse(c.ToString())).ToList();
                for (int i = 0; i < digits.Count; i++)
                {
                    sum += digits[i] * digits[i];
                }
                r = sum;

                if (r == n)
                {
                    break;
                }
            }

            return r == 1;
            
        }
    }
}
