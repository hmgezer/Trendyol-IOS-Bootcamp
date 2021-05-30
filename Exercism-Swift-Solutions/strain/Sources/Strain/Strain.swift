//Solution goes in Sources
extension Array {
    func keep(operation: (Element) -> (Bool)) -> [Element] {
        var Arr = [Element]()
        for i in self {
            if operation(i){
                Arr.append(i)
            }
        }
        return Arr
    }
    func discard(operation: (Element) -> (Bool)) -> [Element] {
        var Arr = [Element]()
        for i in self {
            if !operation(i){
                Arr.append(i)
            }
        }
        return Arr
    }
}
