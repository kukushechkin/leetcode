class Solution:
    def repeatedCharacter(self, s: str) -> str:
        smallest_second_index = len(s)
        first_letter = ""

        for first_index, c in enumerate(s):
            if first_index >= smallest_second_index:
                # will not get better
                break

            if c in s[first_index + 1:smallest_second_index]:
                secondIndex = s.index(c, first_index + 1)
                if secondIndex < smallest_second_index:
                    smallest_second_index = secondIndex
                    first_letter = c

        # print(f"{first_letter} is the first to appear twice at {smallest_second_index}")
        return first_letter

if __name__ == '__main__':
    solution = Solution()
    assert solution.repeatedCharacter("abcd") == ""
    assert solution.repeatedCharacter("abcdd") == "d"
    assert solution.repeatedCharacter("abccbaacz") == "c"
