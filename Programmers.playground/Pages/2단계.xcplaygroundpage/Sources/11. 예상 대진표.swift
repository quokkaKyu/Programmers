import Foundation

func solution11(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var A = a
    var B = b
    var count = 0
    
    while true {
        A = A/2+A%2
        B = B/2+B%2
        count+=1
        if A==B {
            break
        }
    }
    return count
}
