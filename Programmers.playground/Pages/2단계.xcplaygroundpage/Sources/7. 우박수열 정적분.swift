import Foundation

func solution7(_ k:Int, _ ranges:[[Int]]) -> [Double] {
    var value = k
    var array = [Int]()
    var result = [Double]()
    array.append(value)
    repeat {
        if value % 2 == 0 {
            value = value / 2
        } else {
            value = value * 3 + 1
        }
        array.append(value)
    } while value != 1
    
    for i in ranges {
        let leftRange = i.first!
        let rightRange = array.count - 1 + i.last!
    
        if leftRange > rightRange {
            result.append(-1)
        } else {
            var sum = 0.0
            for j in leftRange ... rightRange {
                if j != rightRange {
                    let hap = Double(array[j]+array[j+1])/2
                    sum += hap
                }
            }
            result.append(sum)
        }
    }
    return result
}
