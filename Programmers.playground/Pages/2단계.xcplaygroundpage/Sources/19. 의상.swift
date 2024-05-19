import Foundation

func solution19(_ clothes:[[String]]) -> Int {
    var dictionary = [String: Int]()
    var resultCount = 0
    for cloth in clothes {
        if let count = dictionary[cloth[1]] {
            dictionary.updateValue(count+1, forKey: cloth[1])
        } else {
            dictionary.updateValue(1, forKey: cloth[1])
        }
    }
    
    for i in 1...dictionary.keys.count {
        let combinationArray = combi(Array(dictionary.keys), i)
        for combination in combinationArray {
            var count = 1
            for cloth in combination {
                if let clothCount = dictionary[cloth] {
                    count *= clothCount
                }
            }
            resultCount += count
        }
    }
    return resultCount
}

func combi<T>(_ array: [T], _ targetNum: Int) -> [[T]] {
    var result = [[T]]()

    func combination(_ index: Int, _ nowCombi: [T]) {
        if nowCombi.count == targetNum {
            result.append(nowCombi)
            return
        }
        for i in index..<array.count {
            combination(i + 1, nowCombi + [array[i]])
        }
    }
    combination(0, [])
    return result
}
