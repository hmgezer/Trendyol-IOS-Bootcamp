//Solution goes in Sources
import Foundation

enum Classification {
    case perfect
    case deficient
    case abundant
}

struct NumberClassifier {
    public var number: Int
    public var aliquotSum = 0
        
        init(number: Int) {
            self.number = number
            
            for factor in 1..<number {
                if number % factor == 0 {
                    aliquotSum += factor
                }
            }
        }
        
        var classification: Classification {
            return aliquotSum == number
                ? .perfect
                : aliquotSum > number
                ? .abundant
                : .deficient
        }
    
}
