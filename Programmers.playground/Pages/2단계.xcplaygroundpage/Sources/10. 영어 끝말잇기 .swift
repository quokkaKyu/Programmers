import Foundation

func solution10(_ n:Int, _ words:[String]) -> [Int] {
    for i in words.indices {
        if words.startIndex != i {
            if words[words.startIndex..<i].contains(words[i]) || words[words.index(before: i)].last! != words[i].first! {
                let order = (i+1) % n == 0 ? n : (i+1) % n
                let count = (i+1) % n == 0 ? (i+1)/n : (i+1)/n + 1
                return [order , count]
            }
        }
    }
    return [0,0]
}
