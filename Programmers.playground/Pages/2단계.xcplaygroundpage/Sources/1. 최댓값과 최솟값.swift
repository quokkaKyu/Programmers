import Foundation

public func solution1(_ s:String) -> String {
    var intArray = [Int]()
    for i in s.split(separator: " ") {
        intArray.append(Int(String(i)) ?? 0)
    }
    
    return "\(intArray.min() ?? 0) \(intArray.max() ?? 0)"
}
