class Solution {
    func areOccurrencesEqual(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        var charsOccurences = Array(repeating: 0, count: 26)
        var i = s.startIndex
        while i < s.endIndex {
            let c = Int(s[i].asciiValue! - 97) // 97 == ascii value of 'a'
            charsOccurences[c] += 1
            i = s.index(i, offsetBy: 1)
        }
        var j = charsOccurences.startIndex
        var n = 0
        while j < charsOccurences.endIndex {
            if charsOccurences[j] != 0 {
                if n == 0 {
                    n = charsOccurences[j]
                } else {
                    if n != charsOccurences[j] {
                        return false
                    }
                }
            }
            j += 1
        }
        return true
    }
}
