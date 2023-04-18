import Foundation

func solution16(_ k:Int, _ tangerine:[Int]) -> Int {
    var k = k
    var result = 0
    var dic: [Int: Int] = [:]
    
    for v in tangerine {
        dic[v, default: 0] += 1
    }
    let counts = dic.values.sorted { $0 > $1 }
    for count in counts {
        k -= count
        result += 1
        if k <= 0 {
            break
        }
    }
    return result
}
