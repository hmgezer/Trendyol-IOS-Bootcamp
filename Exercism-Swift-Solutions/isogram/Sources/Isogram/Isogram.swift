//Solution goes in Sources
import Foundation

struct Isogram {
    static func isIsogram(_ input: String) -> Bool {
        let letter = input.filter { $0.isLetter }.lowercased()
        return Set(letter).count == letter.count
    }
}
