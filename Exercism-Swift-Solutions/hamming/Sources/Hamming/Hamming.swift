//Solution goes in Sources
struct Hamming {
    static func compute(_ dna: String, against: String) -> Int? {
        
        guard dna.count == against.count else {return nil}
        var count:Int = 0
        let dnaArray = Array(dna)
        let againstArray = Array(against)
        for i in 0..<dnaArray.count {
            if dnaArray[i] != againstArray[i] {
                count += 1
            }
        }
        return count
    }
}
