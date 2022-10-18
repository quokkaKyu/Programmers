import Foundation

public func insertionSort(_ array: [Int]) -> [Int] {
    var sortedArray = array
    for index in 1..<sortedArray.count {
        var currentIndex = index
        while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
            sortedArray.swapAt(currentIndex - 1, currentIndex)
            currentIndex -= 1
        }
    }
    return sortedArray
}
