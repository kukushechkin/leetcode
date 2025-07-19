// The Swift Programming Language
// https://docs.swift.org/swift-book


class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        for num in nums {
            if let last = result.last {
                result.append(last + num)
            } else {
                result.append(num)
            }
        }
        return result
    }
}
