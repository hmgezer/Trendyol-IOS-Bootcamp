
func differentGeneric <T, U> (number: T, title: U) -> String {
    return "Şirketimizde \(number) tane \(title) vardır."
}
print(differentGeneric(number: 34, title: "mühendis"))
