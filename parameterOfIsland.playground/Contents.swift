//: Playground - noun: a place where people can play

import Cocoa
/*
 [[0,1,0,0],
 [1,1,1,0],
 [0,1,0,0],
 [1,1,0,0]]
 
 Answer: 16
 Explanation: The perimeter is the 16 yellow stripes in the image below:
 
 
 The idea is to traverse the matrix, find all ones and find their contribution in perimeter. The maximum contribution of a 1 is four if it is surrounded by all 0s. The contribution reduces by one with 1 around it.
 
 Algorithm for solving this problem:
 
 Traverse the whole matrix and find the cell having value equal to 1.
 Calculate the number of closed side for that cell and add, 4 – number of closed side to the total perimeter.
 
 **/
class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        print("fsd")

    }
}
