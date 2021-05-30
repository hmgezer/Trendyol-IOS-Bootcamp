//Solution goes in Sources
import Foundation

struct Clock: Equatable, CustomStringConvertible {
    private let timeInMinutes: Int
        
        var description: String {
            String(format: "%02d:%02d", timeInMinutes / 60, timeInMinutes % 60)
        }

        func add(minutes: Int) -> Clock {
            Clock(minutes: self.timeInMinutes + minutes)
        }

        func subtract(minutes: Int) -> Clock {
            Clock(minutes: self.timeInMinutes - minutes)
        }
    
    init(hours: Int = 0, minutes: Int = 0) {
        let t = (hours * 60 + minutes) % 1440
        self.timeInMinutes = t < 0 ? t + 1440 : t
    }
}
