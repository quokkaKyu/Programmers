import Foundation

public func quicksort<T: Comparable>(_ a: [T], isAsc: Bool) -> [T] {
  guard a.count > 1 else { return a }

    if isAsc {
        let pivot = a[a.count/2]
        let less = a.filter { $0 < pivot }
        let equal = a.filter { $0 == pivot }
        let greater = a.filter { $0 > pivot }
        return quicksort(less) + equal + quicksort(greater)
    } else {
        let pivot = a[a.count/2]
        let less = a.filter { $0 < pivot }
        let equal = a.filter { $0 == pivot }
        let greater = a.filter { $0 > pivot }
        return quicksort(greater) + equal + quicksort(less)
    }
}
