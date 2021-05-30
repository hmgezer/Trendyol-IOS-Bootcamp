//Solution goes in Sources
struct Triangle {
    let kind: String

    init(_ edgeOne: Double, _ edgeTwo: Double, _ edgeThree: Double) {
        switch (edgeOne, edgeTwo, edgeThree) {
        case let (edgeOne, edgeTwo, edgeThree) where edgeOne == 0 || edgeTwo == 0 || edgeThree == 0:
            kind = "ErrorKind"
        case let (edgeOne, edgeTwo, edgeThree) where edgeOne + edgeTwo <= edgeThree || edgeOne + edgeThree <= edgeTwo || edgeTwo + edgeThree <= edgeOne:
            kind = "ErrorKind"
        case let (edgeOne, edgeTwo, edgeThree) where edgeOne == edgeTwo && edgeOne == edgeThree:
            kind = "Equilateral"
        case let (edgeOne, edgeTwo, edgeThree) where edgeOne == edgeTwo || edgeOne == edgeThree || edgeTwo == edgeThree:
            kind = "Isosceles"
        default:
            kind = "Scalene"
        }
    }
}
