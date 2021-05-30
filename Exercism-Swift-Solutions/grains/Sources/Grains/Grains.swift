//Solution goes in Sources
import Foundation

enum GrainsError: Error {
    case inputTooLow(message: String)
    case inputTooHigh(message: String)
}
let total: Double = {
    var sum: Double = 0
    for index in 1...64 {
        sum += try! square(index)
    }
    return sum
}()

func square(_ number: Int) throws -> Double {
    if number < 1 {
        throw GrainsError.inputTooLow(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
    }else if number > 64 {
        throw GrainsError.inputTooHigh(message: "Input[\(number)] invalid. Input should be between 1 and 64 (inclusive)")
    }
    return Double(pow(2, Double(number - 1)))
}
