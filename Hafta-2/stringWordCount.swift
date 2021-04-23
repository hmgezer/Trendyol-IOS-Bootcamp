import Foundation
let stringText = "merhaba nasılsınız . iyiyim siz nasılsınız . bende iyiyim."
let result = stringText.components(separatedBy: CharacterSet.punctuationCharacters).joined()
let stringArray = result.split(separator: " ")
var dictionaryString : [String:Int] = [:]

for character in stringArray {
    var flag = 0
    for keys in dictionaryString.keys{
        if (keys == character){
            flag = 1
            break
        }
    }
    if flag == 0 {
        dictionaryString[String(character)] = 1
    }
    else {
        dictionaryString[String(character)]! += 1
    }
}
print(dictionaryString)
