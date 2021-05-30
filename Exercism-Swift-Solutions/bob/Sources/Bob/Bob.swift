//Solution goes in Sources
import Foundation

struct Bob {
    static func hey(_ input: String) -> String {
        if input.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
            return "Fine. Be that way!"
        } else if input.uppercased() == input && input.rangeOfCharacter(from: NSCharacterSet.letters) != nil {
                return "Whoa, chill out!"
            } else if input.hasSuffix("?") {
                return "Sure."
            } else {
                return "Whatever."
            }
    }
}
