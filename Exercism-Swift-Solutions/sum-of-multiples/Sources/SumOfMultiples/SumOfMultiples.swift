//Solution goes in Sources
class SumOfMultiples {
    static func toLimit(_ limit: Int, inMultiples arr: [Int]) -> Int {
        if limit <= 0 {
            return 0
        }
        var number: Int = 0
        for num in 1..<limit {
            for item in arr {
                if(item != 0 && num % item == 0){
                    number += num
                    break
                }
            }
        }
        return number
    }
}
