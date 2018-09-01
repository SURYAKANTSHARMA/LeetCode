//: Playground - noun: a place where people can play

import Foundation

/*
 Example 1:
 Input: [1,1,0,1,1,1]
 Output: 3
 Explanation: The first two digits or the last three digits are consecutive 1s.
 The maximum number of consecutive 1s is 3.
 Note:
 
 The input array will only contain 0 and 1.
 The length of input array is a positive integer and will not exceed 10,000
**/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxConsecutiveCount = 0
        var tmpCount = 0
        for (_, num) in nums.enumerated() {
            if num == 0 {
                //check for tmpCount
                if tmpCount > maxConsecutiveCount {
                    maxConsecutiveCount = tmpCount
                }
                tmpCount = 0
            } else {
                tmpCount += 1
            }
        }
        return maxConsecutiveCount > tmpCount ? maxConsecutiveCount: tmpCount
    }
}

// Complexity - O(n)

let nums = [1,1,0,1,1,1]
Solution().findMaxConsecutiveOnes(nums)




