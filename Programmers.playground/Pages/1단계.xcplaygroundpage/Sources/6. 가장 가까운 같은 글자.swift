import Foundation

func solution6(_ s:String) -> [Int] {
    var result = [Int]()
    for (i,v) in s.enumerated() {
        let prefix = s.prefix(i)
        if let lastCharIndex = prefix.lastIndex(of: v) {
            let distance = prefix.distance(from: lastCharIndex, to: s.index(s.startIndex, offsetBy: i))
            result.append(distance)
        } else {
            result.append(-1)
        }
    }
    return result
}
