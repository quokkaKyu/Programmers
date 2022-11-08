import Foundation

func solution9(_ s:String) -> Int {
    var stack = [Character]()
    for v in s {
        if v == stack.last {
            stack.removeLast()
        } else {
            stack.append(v)
        }
    }
    return stack.count == 0 ? 1 : 0
}
