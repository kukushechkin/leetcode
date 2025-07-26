import Testing
@testable import _65

@Test(arguments: [
    // basic
    ([4, 2, 3], true),
    ([4, 2, 1], false),

    // custom
    ([], true),
    ([1, 2, 3, 4, 5], true),
    ([1, 2, 3, 1], true),
    ([2, 4, 2, 3], true),
    ([3, 4, 2, 3], false),

    //extra
    ([3, 4, 2, 3], false),
])
func example(nums: [Int], result: Bool) async throws {
    let solution = Solution()
    #expect(solution.checkPossibility(nums) == result)
}
