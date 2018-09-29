import UIKit

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = Stack<Character>()
        for c in s {
            if isOpeningBrace(c: c) {
              stack.push(c)
            } else {
                if stack.peek() == nil {
                    return false
                }
               if let top = stack.pop(), !isMatchingPair(c1: c, c2: top) {
                    return false
               }
            }
        }
       return stack.isEmpty
    }
    
    func isOpeningBrace(c: Character) -> Bool{
     return c == "(" ||  c == "{" || c == "["
    }
    
    func isClosingBrace(c: Character) -> Bool {
        return c == ")" ||  c == "}" || c == "]"
    }
    
    func isMatchingPair(c1: Character, c2: Character) -> Bool {
        if c1 == ")" && c2 == "(" {
            return true
        }
        if c1 == "}" && c2 == "{" {
            return true
        }
        
        if c1 == "]" && c2 == "[" {
            return true
        }
        return false
    }
    func isClosingBrace()  {
        
    }
}

struct Stack<Element> {
    fileprivate var array: [Element] = []
    var isEmpty: Bool {
        return array.isEmpty
    }
    mutating func push(_ element: Element) {
        array.append(element)
    }
    
    mutating func pop() -> Element? {
        return array.popLast()
    }
    
    func peek() -> Element? {
        return array.last
    }
}

Solution().isValid("]")

