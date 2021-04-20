func sumSquareDifference(number: Int) {
    var totalSquare = 0
    var totalSum = 0
    var sumSquare = 0
    var result = 0
    for square in 1..<number {
        totalSquare += square * square
    }
    for sum in 1..<number {
        totalSum += sum
        sumSquare = totalSum * totalSum
    }
    result = sumSquare - totalSquare
    print(result)
}
sumSquareDifference(number: 101)