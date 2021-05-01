func nthPrime (number: Int) -> Int{
    var count = 0
    var candidateValue = 2
    var latestPrime = 2
    while(count < number){
        var isPrime = true
        
        for i in 2..<candidateValue{
            if candidateValue % i == 0{
                isPrime = false
                break
            }
        }
        if isPrime {
            latestPrime = candidateValue
            count += 1
        }
        if candidateValue == 2 {
            candidateValue = 3
        }else {
            candidateValue += 2
        }
    }
    return latestPrime
}
print(nthPrime(number: 10001))
