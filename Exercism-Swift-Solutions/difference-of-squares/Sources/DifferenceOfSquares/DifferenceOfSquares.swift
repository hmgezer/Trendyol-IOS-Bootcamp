//Solution goes in Sources
import Foundation

class Squares {
    
    var number: Int
    
    init(_ number: Int) {
            self.number = number
        }
    
    var sumOfSquares: Int {
        get {
            var totalSquare = 0
            for square in 1...self.number {
                totalSquare += square * square
            }
            return totalSquare
        }
    }
    
    var squareOfSum: Int {
        get {
            var totalSum = 0
            for sum in 1...self.number {
                totalSum += sum
                
            }
            return totalSum * totalSum
        }
        
    }
    
    var differenceOfSquares: Int  {
        get {
            return squareOfSum - sumOfSquares
        }
    }
    
    
}
