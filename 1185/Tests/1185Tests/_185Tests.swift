import Testing
@testable import _185

@Test("Test default examples", arguments: [
    (31, 8, 2019, "Saturday"),
    (18, 7, 1999, "Sunday"),
    (15, 8, 1993, "Sunday")
])
func example(day: Int, month: Int, year: Int, expectedResult: String) async throws {
    let solution = Solution()
    #expect(solution.dayOfTheWeek(day, month, year) == expectedResult)
}
