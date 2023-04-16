import Foundation

func solution5(_ food:[Int]) -> String {
    var leftFood = ""
    for (i,v) in food.enumerated() {
        let share = v/2
        for _ in 0 ..< share where i > 0 && share > 0 {
            leftFood.append(String(i))
        }
    }
    let rightFood = String(leftFood.reversed())
    return leftFood + "0" + rightFood
}
