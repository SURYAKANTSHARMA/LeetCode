import UIKit


/*
 Example 1:
 
 Input: [1,2,3,1]
 Output: true
 Example 2:
 
 Input: [1,2,3,4]
 Output: false
 Example 3:
 
 Input: [1,1,1,3,3,4,3,2,4,2]
 Output: true
 */
class Solution {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        var maxIndex = nums.count
        var nums = nums.sorted()
        
        //iterate over the nums
        for (index,num) in nums.enumerated() {
            if index < maxIndex {
                //print(index)
                if index == 0 { continue }
                print(index)
                if nums[index-1] == nums[index] {
                    return true
                }
            }
        }
        return false
    }
}

Solution().containsDuplicate([1,2,3,1])

