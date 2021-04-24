
func primeNumber(number: Int) -> Bool {
    var asal = true
    if number == 1 {
        asal = false
    }else{
        for i in 2..<number {
            if number % i == 0{
                asal = false
                break
            }
        }
    }
    return asal
}
print(primeNumber(number: 45))
