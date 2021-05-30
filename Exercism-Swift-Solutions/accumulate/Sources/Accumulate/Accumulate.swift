//Solution goes in Sources
import Foundation

extension Array {
    func accumulate<T>(_ closure: (Element) -> T) -> [T]{
        var array = [T]()
        for i in self {
            let result = closure(i)
            array.append(result)
        }
        return array
    }
}
