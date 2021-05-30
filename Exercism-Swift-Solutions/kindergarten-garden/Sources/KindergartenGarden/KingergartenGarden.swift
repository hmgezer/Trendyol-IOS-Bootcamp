//Solution goes in Sources
import Foundation

struct Garden {
    enum Plant: Character {
        case radishes = "R"
        case clover = "C"
        case grass = "G"
        case violets = "V"
    }
    private static let allChildren = [
        "Alice", "Bob", "Charlie", "David",
        "Eve", "Fred", "Ginny", "Harriet",
        "Ileana", "Joseph", "Kincaid", "Larry",
    ]
    
    private var dict = [String: [Plant]]()
    
    init(_ diagram: String, children: [String] = Garden.allChildren) {
        let children = children.sorted()
        let diagramRows = diagram.split(separator: "\n")
        diagramRows.forEach {
            $0.enumerated().forEach {
                dict[children[$0 / 2], default: []].append(Plant(rawValue: $1)!)
            }
        }
    }
    func plantsForChild(_ child: String) -> [Plant] { dict[child] ?? [] }
}
