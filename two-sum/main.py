from typing import List


class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for i, num in enumerate(nums):
            left = target - num
            next_index = i + 1
            if left in nums[next_index:]:
                return [i, nums.index(left, next_index)]
        return []


if __name__ == '__main__':
    solution = Solution()
    assert solution.twoSum([2, 7, 11, 15], 1) == []
    assert solution.twoSum([2, 7, 11, 15], 16) == []

    assert solution.twoSum([2, 7, 11, 15], 9) == [0, 1]
    assert solution.twoSum([3, 2, 4], 6) == [1, 2]
    assert solution.twoSum([3, 3], 6) == [0, 1]
    assert solution.twoSum([3, 2, 3], 6) == [0, 2]
    assert solution.twoSum([0, 4, 3, 0], 0) == [0, 3]
    assert solution.twoSum([-3, 4, 3, 90], 0) == [0, 2]
    assert solution.twoSum([-1, -2, -3, -4, -5], -8) == [2, 4]

    # assert solution.twoSum([3, 2, 4], 9) == [1, 0, 2]
