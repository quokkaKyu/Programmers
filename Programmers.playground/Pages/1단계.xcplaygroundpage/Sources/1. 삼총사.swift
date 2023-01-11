import Foundation

public func solution1(_ number:[Int]) -> Int {
    var count = 0
    for i in 0 ..< number.count {
        for j in i ..< number.count where j != i {
            for k in j ..< number.count where k != j {
                if number[i] + number[j] + number[k] == 0 {
                    count+=1
                }
            }
        }
    }
    return count
}
