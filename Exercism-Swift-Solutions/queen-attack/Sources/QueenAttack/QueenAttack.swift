//Solution goes in Sources

struct Queens {
    let white: [Int]
    let black: [Int]
    let canAttack: Bool

    enum InitError: Error {
        case incorrectNumberOfCoordinates
        case invalidCoordinates
        case sameSpace
    }

    init(white: [Int] = [0, 3], black: [Int] = [7, 3]) throws {
        guard white.count == 2 && black.count == 2 else { throw InitError.incorrectNumberOfCoordinates }
        guard valid(coordinates: white) && valid(coordinates: black) else { throw InitError.invalidCoordinates }
        guard white != black else { throw InitError.sameSpace }

        self.white = white
        self.black = black

        self.canAttack = white[0] == black[0] || white[1] == black[1] || abs(slope(white, black)) == 1.0
    }
}

extension Queens: CustomStringConvertible {
    var description: String {
        return (0...7).map { row in
            (0...7).map { column in
                if [row, column] == self.white {
                    return "W"
                } else if [row, column] == self.black {
                    return "B"
                } else {
                    return "_"
                }
            }.joined(separator: " ")
        }.joined(separator: "\n")
    }
}

fileprivate func valid(coordinates: [Int]) -> Bool {
    return coordinates[0] >= 0 && coordinates[0] <= 7 && coordinates[1] >= 0 && coordinates[1] <= 7
}

fileprivate func slope(_ a: [Int], _ b: [Int]) -> Float {
    return Float(a[0] - b[0]) / Float(a[1] - b[1])
}

