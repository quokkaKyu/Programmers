import Foundation

public func solution4(_ s:String) -> Bool
{
    var stack = [Character]()
    for i in s {
        stack.append(i)
        
        if stack.count >= 2, i == ")", stack[stack.endIndex - 2] == "(" {
            stack.popLast()
            stack.popLast()
        }
    }
    return stack.isEmpty
}
