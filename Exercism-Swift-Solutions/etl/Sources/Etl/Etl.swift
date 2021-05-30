//Solution goes in Sources
import Foundation

struct ETL {
    static func transform(_ target: [Int:[String]]) -> [String: Int] {
        var results = [String: Int]()
        for(key, values) in target {
            for value in values {
                results.updateValue(key, forKey: value.lowercased())
            }
        }
        return results
    }
}
