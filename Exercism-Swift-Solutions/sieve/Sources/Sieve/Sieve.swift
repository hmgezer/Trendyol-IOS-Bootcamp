//Solution goes in Sources
struct Sieve {
    
    let limit: Int
    
    init(_ limit: Int) {
        self.limit = limit
    }

    var primes: [Int] {
        get {
            var notPrimeNumbers = Set<Int>()
            var primeNumbers = Set<Int>()
            
            for number in 2...limit {
                if !notPrimeNumbers.contains(number) {
                    primeNumbers.insert(number)
                    var multiple = number * 2
                    while multiple <= limit {
                        notPrimeNumbers.insert(multiple)
                        multiple += number
                    }
                }
            }
            return Array(primeNumbers).sorted()
        }
    }
}
