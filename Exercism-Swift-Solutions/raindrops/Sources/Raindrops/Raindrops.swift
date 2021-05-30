//Solution goes in Sources
struct Raindrops {
        var sounds: String = ""
    init(_ number: Int) {
        if number % 3 == 0 {
            sounds = sounds + "Pling"
        }
        if number % 5 == 0 {
            sounds = sounds + "Plang"
        }
        if number % 7 == 0 {
            sounds = sounds + "Plong"
        }
        if sounds.count == 0 {
            sounds = String(number)
        }
    }        
}

