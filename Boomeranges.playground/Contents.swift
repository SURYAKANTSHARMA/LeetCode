//: Playground - noun: a place where people can play

import Cocoa
/*
 Given n points in the plane that are all pairwise distinct, a "boomerang" is a tuple of points (i, j, k) such that the distance between i and j equals the distance between i and k (the order of the tuple matters).
 
 Find the number of boomerangs. You may assume that n will be at most 500 and coordinates of points are all in the range [-10000, 10000] (inclusive).
 
 Example:
 Input:
 [[0,0],[1,0],[2,0]]
 
 Output:
 2
 
 Explanation:
 The two boomerangs are [[1,0],[0,0],[2,0]] and [[1,0],[2,0],[0,0]]
 */

class Solution {
    
    func numberOfBoomerangs(_ points: [[Int]]) -> Int {
        var dict: [Int: Int] = [:]
        var sum = 0
        for (i, value1) in points.enumerated() {
            for (j, value2) in points.enumerated() {
                if i == j { continue }
                let distance = calculateDistance(point1: Solution.Point(x: value1[0], y: value1[1]) , point2: Solution.Point(x: value1[0], y: value1[1]))
                if let value = dict[distance] {
                  dict[distance] = value + 1
                } else {
                  dict[distance] =  1
                }
            }
            
        }
        
        for key in dict.keys {
            sum += dict[key]!
        }
        return sum
    }
    
    func calculateDistance(point1: Point, point2: Point) -> Int {
        let value = (point2.x - point1.x) * (point2.y - point1.y)
        return Int(sqrt(Double(value)))
    }
    
    struct Point {
        let x: Int
        let y: Int
    }
    
}


let nums =  [[0,0],[1,0],[2,0]]
Solution().numberOfBoomerangs(nums)


