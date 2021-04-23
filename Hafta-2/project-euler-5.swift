func smallestMultiple(value: Int, dividers: [Int]) -> Bool{
    for item in dividers{
        if (value % item != 0) {
            return false
        }
    }
    return true
}
func solution() -> Int {
    let arrays : [Int] = [11,12,13,14,15,16,17,18,19,20]
    var value: Int = 2520
    while !smallestMultiple(value: value, dividers: arrays){
        value += 2520
    }
    return value
}
print(solution())