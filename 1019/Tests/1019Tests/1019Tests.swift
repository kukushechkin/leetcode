import XCTest
@testable import _019

func linkedList(from array: ArraySlice<Int>) -> ListNode? {
    if array.isEmpty {
        return nil
    }
    return ListNode(array.first!, linkedList(from: array.dropFirst()))
}

final class _019Tests: XCTestCase {
    func testExample() throws {
        let solution = Solution()
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [])), [])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [2, 1, 5])), [5, 5, 0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [2, 7, 4, 3, 5])), [7, 0, 5, 5, 0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [2, 2, 2, 2, 7, 4, 3, 5])), [7, 7, 7, 7, 0, 5, 5, 0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [2])), [0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [3, 2])), [0, 0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [2, 3, 5, 1, 1, 1])), [3, 5, 0, 0, 0, 0])

        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [1,7,5,1,9,2,5,1])), [7,9,9,9,0,5,0,0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [10,4,6,4,10])), [0,6,10,10,0])
        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [9,7,6,7,6,9])), [0,9,7,9,9,0])

        XCTAssertEqual(solution.nextLargerNodes(linkedList(from: [9,8,7,6,5,4,3,2,1])), [0,0,0,0,0,0,0,0,0])
    }

    func testOne()  throws {
        let solution = Solution()
        let answer = solution.nextLargerNodes(linkedList(from: [9,7,6,7,6,9]))
        let expected = [0,9,7,9,9,0]
        XCTAssertEqual(answer, expected)
    }
}
