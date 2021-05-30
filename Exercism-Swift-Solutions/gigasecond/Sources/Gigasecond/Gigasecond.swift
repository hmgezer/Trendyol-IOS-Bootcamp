//Solution goes in Sources
import Foundation

struct Gigasecond {
    private static let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return dateFormatter
    }()

    var from: Date
    let gigasecond: TimeInterval = 1_000_000_000

    init?(from: String) {
        guard let d = Gigasecond.dateFormatter.date(from: from) else {
            return nil
        }
        self.from = d

    }

    var description: String {
        Gigasecond.dateFormatter.string(
            from: from.addingTimeInterval(gigasecond)
        )
    }
}
