import Foundation

func solution6(_ n:Int) -> Int
{
    let str = String(n, radix: 2)
    let oneNumberCount = str.filter { $0 == "1" }.count
    var compareValue = n
    var compareValueOneNumberCount = oneNumberCount
    
    repeat {
        compareValue += 1
        let compareValueStr = String(compareValue, radix: 2)
        compareValueOneNumberCount = compareValueStr.filter { $0 == "1" }.count
    } while oneNumberCount != compareValueOneNumberCount
    
    return compareValue
}
