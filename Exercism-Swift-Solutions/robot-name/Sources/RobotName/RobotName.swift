//Solution goes in Sources
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let digits = "0123456789"

struct Robot {
    var name: String = ""
    static func makeName() -> String {
        var robotName = ""
        for _ in 1...2 {
            robotName += String(alphabet.randomElement()!)
        }
        for _ in 1...3 {
            robotName += String(digits.randomElement()!)
        }
        return robotName.uppercased()
    }
    mutating func resetName() {
        name = Robot.makeName()
    }
    init() {
        self.name = Robot.makeName()
    }
}
