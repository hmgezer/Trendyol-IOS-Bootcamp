//Solution goes in Sources
extension Array {
    func recite() -> String {
        var result = ""
        for (index, word) in self.enumerated() {
            if index != (self.count - 1) {
                result += "For want of a \(word) the \(self[index + 1]) was lost.\n"
            } else {
                result += "And all for the want of a \(self[0])."
            }
        }
        return result
    }
}
