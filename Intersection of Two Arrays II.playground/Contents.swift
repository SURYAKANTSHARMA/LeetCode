//: Playground - noun: a place where people can play

import Foundation
/*
 Given two arrays, write a function to compute their intersection.
 
 Example 1:
 
 Input: nums1 = [1,2,2,1], nums2 = [2,2]
 Output: [2]
 Example 2:
 
 Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
 Output: [9,4]

 */

class Solution {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var instersectedArray: [Int] = []
        var _num1 = nums1
        var _num2 = nums2
        
        // nlogn + n + n2
        _num1.sort()
        _num2.sort()
        
        // _num1.removeDuplicates()
        // _num2.removeDuplicates()
        
        var n1 = 0
        while n1 < _num1.count {
            var n2 = 0
            while n2 < _num2.count {
                if _num1[n1] < _num2[n2] { break }
                if _num1[n1] == _num2[n2] {
                    instersectedArray.append(_num1[n1])
                    _num2.remove(at: n2)
                    break
                }
                n2 += 1
            }
            n1 += 1
        }
    
        return instersectedArray
    }
    
}

// O(n) time O(n) space complexity
extension Array where Element: Equatable {
    mutating func removeDuplicates () {
        var newArray: [Element] = []
        for element in self {
            if !newArray.contains(element) {
                newArray.append(element)
            }
        }
        self = newArray
    }
}

let nums2 = [54,93,21,73,84,60,18,62,59,89,83,89,25,39,41,55,78,27,65,82,94,61,12,38,76,5,35,6,51,48,61,0,47,60,84,9,13,28,38,21,55,37,4,67,64,86,45,33,41]
let nums1 = [17,17,87,98,18,53,2,69,74,73,20,85,59,89,84,91,84,34,44,48,20,42,68,84,8,54,66,62,69,52,67,27,87,49,92,14,92,53,22,90,60,14,8,71,0,61,94,1,22,84,10,55,55,60,98,76,27,35,84,28,4,2,9,44,86,12,17,89,35,68,17,41,21,65,59,86,42,53,0,33,80,20]
let inter = Solution().intersect(nums1, nums2)
print(inter)
print(inter.count)
var sol = [54,21,73,84,60,18,62,59,89,89,41,55,27,65,94,61,12,76,35,48,0,60,84,9,28,55,4,67,86,33]
sol.sort()
print(sol)
print(sol.count)


