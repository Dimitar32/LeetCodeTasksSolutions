using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task3110
    {
        public static int ScoreOfString(string s)
        {
            int sum = 0;

            if (s.Length == 0)
            {
                return sum;
            }

            if (s.Length == 1)
            {
                sum += (char)s[0];
                return sum;
            }

            for (int i = 0; i < s.Length - 1; i++)
            {
                char c1 = s[i];
                char c2 = s[i + 1];
                sum += Math.Abs(c1 - c2);
            }

            return sum;
        }
    }
}
