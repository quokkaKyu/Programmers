import Foundation
func solution14(_ cacheSize:Int, _ cities:[String]) -> Int {
    var caches = [String]()
    var result = 0
    for city in cities {
        let city = city.lowercased()
        
        if caches.contains(city) {
            result+=1
        } else {
            result+=5
        }
        
        if cacheSize > 0 {
            if caches.count < cacheSize { // 작으면 추가
                caches.append(city)
            } else {
                if caches.contains(city) {
                    for (index, cache) in caches.enumerated() where cache == city {
                        caches.remove(at: index)
                        caches.append(city)
                        break
                    }
                } else {
                    caches.removeFirst()
                    caches.append(city)
                }
            }
        }
    }
    return result
}
