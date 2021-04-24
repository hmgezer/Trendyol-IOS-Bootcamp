
enum Directions: String {
    case left
    case right
    case up 
    case down
}

func Move (direction: Directions, angle: Int){
    print("My character moving to \(direction). He is \(angle) degrees \(direction).. ")
}

func handleDirection(direction: Directions ) {
    switch direction {
    case .down:
        return Move(direction: direction, angle: 135)
    case .up:
        return Move(direction: direction, angle: 60)
    case .left:
        return Move(direction: direction, angle: 90)
    case .right:
        return Move(direction: direction, angle: 180)
    }
}

print(handleDirection(direction: .up))
