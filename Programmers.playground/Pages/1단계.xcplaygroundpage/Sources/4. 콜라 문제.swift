import Foundation

func solution4(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var remainCokeCount = n
    var bonusCokeCount = 0
    while remainCokeCount >= a {
        let share = remainCokeCount / a
        let bonus = share * b
        let remainder = remainCokeCount % a
        bonusCokeCount += bonus
        remainCokeCount = bonus + remainder
    }
    return bonusCokeCount
}
