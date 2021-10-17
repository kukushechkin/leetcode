// Definition for singly-linked list.
 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

// O(N^2)
//class Solution {
//    func findFirstLarger(value: Int, _ node: ListNode?) -> ListNode? {
//        guard let node = node else {
//            return nil
//        }
//
//        if node.val > value {
//            return node
//        }
//        return findFirstLarger(value: value, node.next)
//    }
//
//    func nextLargerNodes(_ head: ListNode?) -> [Int] {
//        if head == nil {
//            return []
//        }
//
//        var ptr = head
//        var result: [Int] = []
//
//        while(true) {
//            guard let node = ptr else {
//                break
//            }
//            if let firstLarger = findFirstLarger(value: node.val, node.next) {
//                result = result + [firstLarger.val]
//            } else {
//                result = result + [0]
//            }
//            ptr = node.next
//        }
//
//        return result
//    }
//}

// parallel O(N^2) with array conversion
//import Foundation
//class Solution {
//    func makeArray(list node: ListNode?) -> [Int] {
//        guard let node = node else {
//            return []
//        }
//        return [node.val] + makeArray(list: node.next)
//    }
//
//    func nextLargerNodes(_ head: ListNode?) -> [Int] {
//        guard let head = head else {
//            return []
//        }
//
//        let array = makeArray(list: head)
//        var result = [Int](repeating: 0, count: array.count)
//
//        DispatchQueue.concurrentPerform(iterations: array.count) { (index) in
//            let referenceValue = array[index]
//            result[index] = array[index...].first(where: { val in
//                val > referenceValue
//            }) ?? 0
//        }
//
//        return result
//    }
//}

// O(N)
class Solution {
    func nextLargerNodes(_ head: ListNode?) -> [Int] {
        if head == nil {
            return []
        }

        var index = 0
        var stack: [(Int, Int)] = []
        var result: [Int] = []
        var ptr = head

        while(ptr != nil) {
            guard let node = ptr else {
                break
            }

            result.append(0)

            while(true) {
                if let last = stack.last {
                    if last.1 < node.val {
                        _ = stack.removeLast()
                        result[last.0] = node.val
                        continue
                    }
                }
                break
            }

            stack.append((index, node.val))
            index += 1
            ptr = node.next
        }

        return result
    }
}
