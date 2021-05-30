//Solution goes in Sources
class SpaceAge {
    struct Planet {
        static var earth = Double(31557600)
        static var mercury = earth * 0.2408467
        static var venus = earth * 0.61519726
        static var mars = earth * 1.8808158
        static var jupiter = earth * 11.862615
        static var saturn = earth * 29.447498
        static var uranus = earth * 84.016846
        static var neptune = earth * 164.79132
    }
    var seconds : Int
    init(_ seconds: Int){
        self.seconds = seconds
    }
    var onEarth: Double {
        return Double(seconds) / Planet.earth
    }
    var onMercury: Double {
        return Double(seconds) / Planet.mercury
    }
    var onVenus: Double {
        return Double(seconds) / Planet.venus
    }
    var onMars: Double {
        return Double(seconds) / Planet.mars
    }
    var onJupiter: Double {
        return Double(seconds) / Planet.jupiter
    }
    var onSaturn: Double {
        return Double(seconds) / Planet.saturn
    }
    var onUranus: Double {
        return Double(seconds) / Planet.uranus
    }
    var onNeptune: Double {
        return Double(seconds) / Planet.neptune
    }
}
