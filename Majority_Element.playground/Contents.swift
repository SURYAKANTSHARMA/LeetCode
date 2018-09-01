import UIKit
/*
 Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
 
 You may assume that the array is non-empty and the majority element always exist in the array.
 **/

class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for elem in nums {
            if let valueExist = dict[elem] {
                dict[elem] =  valueExist + 1
            } else {
                dict[elem] = 1
            }
        }
        let hightestValue = dict.values.max()
        let otherDict = dict.filter{ $0.value == hightestValue }
        return otherDict.first!.key
    }
}


let arr = [2,2,1,1,1,2,2]
Solution().majorityElement(arr)

