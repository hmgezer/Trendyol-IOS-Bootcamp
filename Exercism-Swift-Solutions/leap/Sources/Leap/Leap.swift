//Solution goes in Sources
class Year {
    init(calendarYear: Int) {
            self.year = calendarYear
        }
    var year: Int
    var isLeapYear: Bool {
        get{
            if self.year % 4 == 0 {
                if (self.year % 100 != 0 || self.year % 400 == 0) {
                    return true
                }
            }
            return false
        }
    }
}
