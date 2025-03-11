using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task2011
    {
        public static int FinalValueAfterOperations(string[] operations)
        {
            int result = 0;

            foreach (string operation in operations)
            {
                if (operation.StartsWith("--") || operation.EndsWith("--"))
                {
                    result--;
                } else if (operation.StartsWith("++") || operation.EndsWith("++"))
                {
                    result++;
                }
            }

            return result;
        }
    }
}
