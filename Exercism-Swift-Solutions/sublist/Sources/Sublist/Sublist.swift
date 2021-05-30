//Solution goes in Sources
import Foundation

enum Result {
    case equal, unequal, superlist, sublist
}
func classifier(listOne: [Int], listTwo: [Int]) -> Result {
    let stringOne = listOne.map{String($0)}.joined(separator: ",")
    let stringTwo = listTwo.map{String($0)}.joined(separator: ",")
    let isListLonger: Bool = listOne.count > listTwo.count
    
    if stringOne == stringTwo {
        return .equal
    }
    else if stringTwo.isEmpty || (isListLonger && stringOne.contains(stringTwo)) {
        return .superlist
    }
    else if stringOne.isEmpty || (!isListLonger && stringTwo.contains(stringOne)) {
        return .sublist
    }
    else {
        return .unequal
    }
}
