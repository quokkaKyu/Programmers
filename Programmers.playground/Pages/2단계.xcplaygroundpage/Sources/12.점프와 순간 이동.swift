import Foundation

func solution12(_ n:Int) -> Int
{
    var N = n
    var ans = 0
    while true {
        if N%2==1 {
            N-=1
            ans+=1
        } else {
            N/=2
        }
        if N==0 {
            break
        }
    }
    
    return ans
}
