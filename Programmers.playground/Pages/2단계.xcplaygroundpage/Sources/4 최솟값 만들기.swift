import Foundation

public func solution4(_ A:[Int], _ B:[Int]) -> Int
{
    let a = A.sorted(by: >)
    let b = B.sorted(by: <)
    var sum = 0
    for i in 0 ..< a.count {
        sum += a[i] * b[i]
    }
    return sum
}
