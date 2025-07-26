// The Swift Programming Language
// https://docs.swift.org/swift-book

class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        if nums.isEmpty {
            return true
        }
        var max: Int = Int.min

        var previous: Int = nums.first!
        var patched: Bool = false

        for num in nums[1...] {
            if num >= previous {
                max = max < previous ? previous : max
                previous = num
            } else {
                if patched {
                    // second patch
                    return false
                } else {
                    if num >= max {
                        previous = num
                    } else {
                        // keep previous
                    }
                    patched = true
                }
            }
        }

        return true
    }
}
