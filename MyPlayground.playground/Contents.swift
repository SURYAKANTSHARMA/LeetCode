//: Playground - noun: a place where people can play
/*
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 */
import Foundation


class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var result: [Int] = []
        for (index, num) in  nums.enumerated() {
            //if num > target { break }
            var i = index + 1
            while i < nums.count  {
                if num + nums[i] == target {
                    result.append(index)
                    result.append(i)
                    return result
                }
                i += 1
            }
        }
       return  []
    }
}





// using HashMap or Dict
class Solution2 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        // just for create a table of nums
        for (index, num) in  nums.enumerated() {
            let compliment = target - num
            if let compIndex = dict[compliment] , compIndex != index {
                return [index, compIndex]
            }
            dict[num] = index
        }
        
       
        return  []
    }
}

let nums = [3,3]
let target = 6
Solution2().twoSum(nums, target)
