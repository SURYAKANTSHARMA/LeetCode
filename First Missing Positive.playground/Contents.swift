import UIKit

/*
 Given an unsorted integer array, find the smallest missing positive integer.
 
 Example 1:
 Input: [1,2,0]
 Output: 3
 Example 2:
 
 Input: [3,4,-1,1]
 Output: 2
 Example 3:
 
 Input: [7,8,9,11,12]
 Output: 1
 */

class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        var nums = nums
        nums.sort() // nlog(n)
        var firstPositiveIndex: Int? = nil
        for (index, elem) in nums.enumerated() {
            if firstPositiveIndex == nil, elem > 0 {
                firstPositiveIndex = index
            }
            
            if let firstPositiveIndex = firstPositiveIndex {
                if elem != (index - firstPositiveIndex) + 1 {
                    return (index - firstPositiveIndex) + 1
                }
            }
            
        }
        return nums.last!
    }
}
// [-1,1,3,4]

let arr =  [7,8,9,11,12]
Solution().firstMissingPositive(arr)

