import UIKit

/*
Write a program that outputs the string representation of numbers from 1 to n.

But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.

Example:

n = 15,

Return:
[
"1",
"2",
"Fizz",
"4",
"Buzz",
"Fizz",
"7",
"8",
"Fizz",
"Buzz",
"11",
"Fizz",
"13",
"14",
"FizzBuzz"
]
*/


class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var arr = [String]()
        var i = 1
        while i <= n {
            if i % 3 == 0 &&  i % 5 == 0 {
                arr.append("FizzBuzz")
                i += 1
                continue
            }
            else if i % 3 == 0 {
                arr.append("Fizz")
                i += 1
                continue
            }
            else if i % 5 == 0 {
                arr.append("Buzz")
                i += 1
                continue
            }
            arr.append("\(i)")
            i += 1
        }
        return arr
    }
}
Solution().fizzBuzz(15)

