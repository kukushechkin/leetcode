import XCTest
@testable import _941

final class _941Tests: XCTestCase {
    var solution: Solution = Solution()

    func testExample() {
        XCTAssertTrue(solution.areOccurrencesEqual(""))
        XCTAssertTrue(solution.areOccurrencesEqual("aabbcc"))
        XCTAssertTrue(solution.areOccurrencesEqual("abacbc"))
        XCTAssertTrue(solution.areOccurrencesEqual("aabbzz"))

        XCTAssertFalse(solution.areOccurrencesEqual("aabbbcc"))
        XCTAssertFalse(solution.areOccurrencesEqual("aaabb"))
    }

    func testPerformance() {
        measure {
            for _ in 1...100 {
                XCTAssertTrue(solution.areOccurrencesEqual(String(repeating: "a", count: 10000)))
            }
        }
    }
}
