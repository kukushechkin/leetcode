import Testing
@testable import _480

@Test("Test with provided examples", arguments: zip(
    [[1,2,3,4], [1,1,1,1,1], [3,1,2,10,1]],
    [[1,3,6,10], [1,2,3,4,5], [3,4,6,16,17]]
))
func example(arg: [Int], expectedResult: [Int]) async throws {
    let result = _480.Solution().runningSum(arg)
    #expect(result == expectedResult)
}
