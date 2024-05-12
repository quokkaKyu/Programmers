import Foundation

func solution18(_ str1:String, _ str2:String) -> Int {
    var str1SubsetArray = [String]()
    var str2SubsetArray = [String]()
    var intersectionCount = 0
    var result = Double(1)
    
    for index in 0..<str1.count - 1 { //FRANCE
        let startIndex = str1.index(str1.startIndex, offsetBy: index)
        let endIndex = str1.index(startIndex, offsetBy: 1)
        let subset = String(str1[startIndex...endIndex]).lowercased()
        if !containsWhitespaceOrSpecialCharacter(subset) {
            str1SubsetArray.append(subset)
        }
    }
    
    for index in 0..<str2.count - 1 { // FRENCH
        let startIndex = str2.index(str2.startIndex, offsetBy: index)
        let endIndex = str2.index(startIndex, offsetBy: 1)
        let subset = String(str2[startIndex...endIndex]).lowercased()
        if !containsWhitespaceOrSpecialCharacter(subset) {
            str2SubsetArray.append(subset)
        }
    }
    
    str1SubsetArray.forEach {
        if let findIndex = str2SubsetArray.firstIndex(of: $0) {
            str2SubsetArray.remove(at: findIndex)
            intersectionCount += 1
        }
    }
    
    let unionCount = str1SubsetArray.count + str2SubsetArray.count
    if intersectionCount > 0 {
        result = Double(intersectionCount) / Double(unionCount)
    }
    return Int(floor(result * 65536))
}

func containsWhitespaceOrSpecialCharacter(_ string: String) -> Bool {
    let whitespaceAndSpecialCharacterSet = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz").inverted
    return string.rangeOfCharacter(from: whitespaceAndSpecialCharacterSet) != nil
}
