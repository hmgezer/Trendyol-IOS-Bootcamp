//Solution goes in Sources
class IsbnVerifier {
    static func isValid(_ number : String) -> Bool {
        var sum = 0
        var count : Int = 10
        for char in number {
            if char == "-" { continue }
            if char == "X" && count == 1 {
                sum += 10
            }
            else {
                guard let digit = Int(String(char)) else { return false }
                sum += digit * count
            }
            count -= 1
        }
        if count == 0 && sum % 11 == 0 {
            return true
        }
        return false
    }
}
