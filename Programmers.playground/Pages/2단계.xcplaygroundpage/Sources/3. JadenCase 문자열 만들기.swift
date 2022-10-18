import Foundation

public func solution3(_ s:String) -> String {
    return String(s.components(separatedBy: " ")
        .map { guard let a = $0.first else {
            return "" }
            if a.isLetter {
                return $0.capitalized
            } else {
                return $0.lowercased()
            }
        }.joined(separator: " "))
}

