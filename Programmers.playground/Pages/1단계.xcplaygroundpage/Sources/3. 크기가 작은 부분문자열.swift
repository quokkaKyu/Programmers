import Foundation

func solution3(_ t:String, _ p:String) -> Int {
    guard let pValue = Int(p) else {
        return 0
    }
    var result = 0
    
    var string = t.prefix(p.count)
    if let intValue = Int(string), pValue >= intValue {
        result+=1
    }
    for (i, v) in t.enumerated() where i >= p.count {
        string.removeFirst()
        string.append(v)
        guard let tValue = Int(string) else {
            return 0
        }
        if pValue >= tValue {
            result += 1
        }
    }
    return result
}
