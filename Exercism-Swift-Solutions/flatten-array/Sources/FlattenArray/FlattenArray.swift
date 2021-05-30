//Solution goes in Sources
func flattenArray<S,T>(_ arrayInput: [S]) -> [T] {
    var flatten: [T] = []
    for i in arrayInput {
        if let i = i as? T {
            flatten.append(i)
        }
        if let i = i as? [S] {
            let result: [T] = flattenArray(i)
            for item in result {
                flatten.append(item)
            }
        }
    }
    return flatten
}
