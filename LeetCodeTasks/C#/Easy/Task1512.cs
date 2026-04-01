using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LeetCodeTask3110.LeetCodeTasks
{
    internal class Task1512
    {

        public static int NumIdenticalPairs(int[] nums)
        {
            if (nums == null || nums.Length == 1)
            {
                return 0;
            }

            if (nums.Length == 2)
            {
                return nums[0] == nums[1] ? 1 : 0;
            }

            List<int[]> result = new List<int[]>();

            for (int i = 0; i < nums.Length; i++)
            {
                for(int j = i + 1; j < nums.Length; j++)
                {
                    if (nums[j] == nums[i])
                    {
                        result.Add(new int[] {i, j});
                    }
                }
            }

            return result.Count;
        }
    }
}
