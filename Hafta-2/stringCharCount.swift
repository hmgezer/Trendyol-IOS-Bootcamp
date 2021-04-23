import Foundation

var stringText = "aaba kouq bux"
let result = stringText.components(separatedBy: CharacterSet.punctuationCharacters).joined()
var dictionaryString : [Character:Int] = [:]
var value = 3
var vowels: Array<Character> = []

for character in stringText {
    var flag = 0
    for keys in dictionaryString.keys{
        if (keys == character){
            flag = 1
            break
        }
    }
    if flag == 0 {
        dictionaryString[character] = 1
    }
    else {
        dictionaryString[character]! += 1
    }
}

for (i,j) in dictionaryString {
    if j >= value {
        if i != " " {
            vowels.append(i)
        }
    }
}
print(vowels)
stringText.removeAll(where: { vowels.contains($0) })
print(stringText)
