import Foundation

func solution17 (_ k:Int, _ dungeons:[[Int]]) -> Int {
    var max = 0
    let dungeonsCount = dungeons.count
    let totalDungeonArray = permutation(dungeons, dungeons.count)
    for dungeonArray in totalDungeonArray {
        var hp = k
        var count = 0
        for dungeon in dungeonArray {
            if hp >= dungeon[0] {
                hp-=dungeon[1]
                count+=1
            } else {
                continue
            }
        }
        if count >= max {
            max = count
        }
        
        if max == dungeonsCount {
            return max
        }
    }
    return max
}

func combination<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    
    func combi(_ index: Int, _ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        for i in index..<elements.count {
            combi(i + 1, now + [elements[i]])
        }
    }
    combi(0, [])
    return result
}

func permutation<T>(_ elements: [T], _ k: Int) -> [[T]] {
    var result = [[T]]()
    var visited = [Bool](repeating: false, count: elements.count)
    
    func permut(_ now: [T]) {
        if now.count == k {
            result.append(now)
            return
        }
        
        for i in 0..<elements.count {
            if visited[i] == true { continue }
            visited[i] = true
            permut(now + [elements[i]])
            visited[i] = false
        }
    }
    permut([])
    return result
}
