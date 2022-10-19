import Foundation

public func solution5(_ n:Int) -> Int {

    var a = 0
    var b = 1
    var sum = a + b
    for _ in 2 ... n { // 2, 3
        sum = (a + b) % 1234567
        a = b % 1234567
        b = sum % 1234567
    }
    return sum
}

public func solution5ExceedTimeLimit(_ n:Int) -> Int {
    return recursive(n: n)
}

func recursive(n: Int) -> Int {
    switch n {
    case 0: return 0
    case 1: return 1
    default: return recursive(n: n-2) % 1234567 + recursive(n: n-1) % 1234567
    }
}


// n = 2. 0 1 -> 1
// n = 3. 1 1 -> 2
// n = 4. 1 2 -> 3
// n = 5. 2 3 -> 5

//F(2) = F(0) + F(1) = 0 + 1 = 1
//F(3) = F(1) + F(2) = 1 + 1 = 2 1
//F(4) = F(2) + F(3) = 1 + 2 = 3 1
//F(5) = F(3) + F(4) = 2 + 3 = 5 2
//F(6) = F(4) + F(5) = 3 + 5 = 8 3
//F(7) = F(5) + F(6) = 5 + 8 = 13 5
//F(8) = F(6) + F(7) = 8 + 13 = 21 8
