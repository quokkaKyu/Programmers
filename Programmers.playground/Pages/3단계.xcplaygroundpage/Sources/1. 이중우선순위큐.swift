import Foundation

func solution1(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    operations.forEach { operation in
        let commandAndNumber = operation.split(separator: " ")
        let command = commandAndNumber[0]
        guard let number = Int(commandAndNumber[1]) else {
            return
        }
        switch command {
        case "I": queue.append(number)
        case "D": if number > 0 {
            if let max = queue.max(), let removedIndex = queue.firstIndex(of: max) {
                print("max: \(max)")
                queue.remove(at: removedIndex)
            }
        } else {
            if let min = queue.min(), let removedIndex = queue.firstIndex(of: min) {
                print("min: \(min)")
                queue.remove(at: removedIndex)
            }
        }
        default: break
        }
    }
    if queue.isEmpty {
        queue = [0,0]
    } else {
        if let max = queue.max(), let min = queue.min() {
            queue = [max, min]
        }
    }
    return queue
}
