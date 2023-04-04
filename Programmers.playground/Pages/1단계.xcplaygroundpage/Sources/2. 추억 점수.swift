import Foundation

func solution2(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var result = [Int]()
    var dic = [String: Int]()
    zip(name, yearning).forEach { (string, int) in
        dic.updateValue(int, forKey: string)
    }
    photo.forEach { array in
        var sum = 0
        array.forEach { string in
            guard let score = dic[string] else {
                return
            }
            sum += score
        }
        result.append(sum)
    }
    return result
}
