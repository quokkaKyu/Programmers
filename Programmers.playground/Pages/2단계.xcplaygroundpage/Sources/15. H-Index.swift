import Foundation
func solution15(_ citations:[Int]) -> Int {
    let sorted = citations.sorted(by: >)
    for (i, citation) in sorted.enumerated() {
        if i >= citation {
            return i
        }
    }
    return sorted.count
}
