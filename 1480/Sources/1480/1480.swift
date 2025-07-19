// The Swift Programming Language
// https://docs.swift.org/swift-book


class Solution {
    private func runningSumIteration(nums: ArraySlice<Int>, sums: [Int]) -> [Int] {
        guard let nextNum = nums.first else {
            return sums
        }
        return runningSumIteration(
            nums: nums.dropFirst(),
            sums: sums + [(sums.last ?? 0) + nextNum]
        )
    }

    func runningSum(_ nums: [Int]) -> [Int] {
        guard let firstItem = nums.first else {
            return []
        }
        return runningSumIteration(nums: nums.dropFirst(), sums: [firstItem])
    }
}
