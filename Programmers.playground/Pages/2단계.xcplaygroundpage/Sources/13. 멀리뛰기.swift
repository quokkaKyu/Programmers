import Foundation

func solution13(_ n:Int) -> Int {
    var a = 1
    var b = 1
    var temp = 0
    var count = 1
    while true {
        if count == n {
            break
        }
        temp = b
        b = (b + a)%1234567
        a = (temp)%1234567
        count+=1
    }
    return b
}
