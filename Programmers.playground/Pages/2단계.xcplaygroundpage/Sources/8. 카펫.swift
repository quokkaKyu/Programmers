import Foundation
// 50, 22 4,6,7번 틀리는거
func solution8(_ brown:Int, _ yellow:Int) -> [Int] {
    var array = [Int]()
    var width = 0
    var height = 0
    let area = brown + yellow
    if area % 2 == 0 {
        for i in 1...area {
            if area % i == 0 {
                array.append(i)
            }
        }
    } else {
        for i in stride(from: 1, through: area, by: 2) {
            if area % i == 0 {
                array.append(i)
            }
        }
    }

    // (width-2) * (height-2)가 yello의 갯수랑 맞지않는 경우 예외처리
    var diff = 0
    repeat {
        width = array[array.endIndex/2 + diff]
        if array.count % 2 == 0 {
            height = array[array.endIndex/2 - 1 - diff]
        } else {
            height = array[array.endIndex/2 - diff]
        }
        diff += 1
    } while (width-2) * (height-2) != yellow
    return [width, height]
}
