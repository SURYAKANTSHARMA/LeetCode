import UIKit

/*
 Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.
 
 Note: The algorithm should run in linear time and in O(1) space.
 **/
class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        for elem in nums {
            if let valueExist = dict[elem] {
                dict[elem] =  valueExist + 1
            } else {
                dict[elem] = 1
            }
        }
        let otherDic = dict.filter { $0.value > (nums.count/3)}
        let keys = otherDic.keys.map { return $0 }
        return keys
    }
}


let arr = [1,1,1,3,3,2,2,2]
Solution().majorityElement(arr)
