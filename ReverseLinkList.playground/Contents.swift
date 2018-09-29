import UIKit

/*
 Input: 1->2->3->4->5->NULL
 Output: 5->4->3->2->1->NULL
 */

 //Definition for singly-linked list.

  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init(_ val: Int) {
          self.val = val
          self.next = nil
      }
  }
 
class Solution {
   func reverseList(_ head: ListNode?) -> ListNode? {
        var newListHead: ListNode?
        func reverse(_ head: ListNode?) -> ListNode? {
         if head == nil  {
            return nil
         }
         if head?.next == nil {
            newListHead = head
            return head
         }
         reverse(head?.next)?.next = head
         return head
        }
        reverse(head)?.next = nil
        return newListHead
    }
}
