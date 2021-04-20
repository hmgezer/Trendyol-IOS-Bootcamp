var result : Int = 0 
func palindromeNumber(number: Int){
    let stringNumber = String(number)
    let reverseNumber = String(stringNumber.reversed())
    if stringNumber == reverseNumber {
        if result < number {
            result = number
        }
    }
}

var firstNumber = 1000
var secondNumber = 1000
var number = 100
var total = 0
for firstItem in number..<firstNumber {
    for secondItem in number..<secondNumber {
        let total = firstItem * secondItem
        palindromeNumber(number: total)
    }
}
print(result)
