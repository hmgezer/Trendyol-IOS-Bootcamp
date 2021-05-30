//Solution goes in Sources
class SimulatedRobot {
    var bearing: Orientation = .north
    var coordinates: [Int] = [0, 0]
    
    enum Orientation: Int {
        case north, east, south, west
    }
    
    enum Axis: Int {
        case x, y
    }
    
    enum Instruction: String {
           case turnLeft = "L"
           case turnRight = "R"
           case advance = "A"
       }
    
    func orient(_ bearing: Orientation) {
        self.bearing = bearing
    }
    
    func turnRight() {
        bearing = Orientation(rawValue: (bearing.rawValue + 1) % 4)!
    }
    
    func turnLeft() {
        bearing = Orientation(rawValue: (bearing.rawValue + 3) % 4)!
    }
    
    func advance() {
        switch bearing {
            case .north: coordinates[Axis.y.rawValue] += 1
            case .east: coordinates[Axis.x.rawValue] += 1
            case .south: coordinates[Axis.y.rawValue] -= 1
            case .west: coordinates[Axis.x.rawValue] -= 1
        }
    }
    
    func at(x: Int, y: Int) {
        coordinates = [x, y]
    }
    
    func place(x: Int, y: Int, direction: Orientation) {
        coordinates = [x, y]
        bearing = direction
    }
    
    func instructions(_ instructions: String) -> [Instruction] {
            return instructions.compactMap { Instruction(rawValue: String($0)) }
        }
    
    
    func evaluate(_ instruction: String) {
            instruction.forEach { (character) in
                guard let instruction = Instruction(rawValue: String(character)) else {
                    return
                }

                switch instruction {
                case .advance:
                    self.advance()
                case .turnLeft:
                    self.turnLeft()
                case .turnRight:
                    self.turnRight()
                }
            }
        }
}
