//Solution goes in Sources
import Foundation

enum CollatzError: Error {
    case invalid
}

func steps(_ number: Int) throws -> Int {
    if number <= 0 { throw CollatzError.invalid }
    var number = number
    var steps = 0
    while number != 1 {
        number = number % 2 == 0 ? number/2 : (number * 3) + 1
        steps += 1
    }
    return steps
}
