class Solution {
    func lenLongestFibSubseq(_ arr: [Int]) -> Int {
        var longestSequenceLength = 0
        var anotherSequenceLength = 0
        var i = arr.startIndex
        var j = arr.startIndex + 1

        while i < arr.endIndex {
            j = i + 1
            while j < arr.endIndex - 1 {
                anotherSequenceLength = 2
                var value = arr[i] + arr[j]
                var prevIndex = j
                while true {
                    print("\(i), \(j) : looking for \(value) starting at \(prevIndex)")
                    var nextIndex = prevIndex
                    while nextIndex < (arr.endIndex-1) && arr[nextIndex] < value {
                        nextIndex += 1
                    }
                    if arr[nextIndex] != value {
                        break
                    }

                    // this is so much slower!
//                    guard let nextIndex = arr[j...].firstIndex(of: value) else {
//                        break
//                    }

                    value = arr[prevIndex] + arr[nextIndex]
                    print("\(i), \(j) : \(nextIndex), \(value)")
                    prevIndex = nextIndex
                    anotherSequenceLength += 1
                    if anotherSequenceLength >= 3 && anotherSequenceLength > longestSequenceLength {
                        longestSequenceLength = anotherSequenceLength
                        print("new longest: \(longestSequenceLength)")
                    }
                }
                j += 1
            }
            i += 1
        }

        return longestSequenceLength
    }
}
