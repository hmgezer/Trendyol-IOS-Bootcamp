//Solution goes in Sources
class GradeSchool {
    var roster: [Int:[String]] = [:]

    var sortedRoster: [Int:[String]] {
        return roster.mapValues {i in i.sorted()}
    }

    func addStudent(_ name: String, grade: Int) {
        roster[grade] = studentsInGrade(grade) + [name]
    }

    func studentsInGrade(_ grade: Int) -> [String] {
        return roster[grade] ?? []
    }
}
