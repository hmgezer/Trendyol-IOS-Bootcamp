//Solution goes in Sources
struct Scrabble {
    var score = 0
        
        init(_ string: String?) {
            if ((string?.isEmpty) != nil) {
                self.score = Scrabble.score(string ?? "")
            }
        }
    
    static func score(_ string: String) -> Int{
        var score: Int = 0
        for letter in string {
            switch letter.uppercased() {
            case "A", "E", "I", "O", "U", "L", "N", "R", "S", "T":
                score += 1
            case "D", "G":
                score += 2
            case "B", "C", "M", "P":
                score += 3
            case "F", "H", "V", "W", "Y":
                score += 4
            case "K":
                score += 5
            case "J", "X":
                score += 8
            case "Q", "Z":
                score += 10
            default:
                break
            }
        }
        return score
    }
    
}
