import Foundation

struct SecretHandshake {
    
    let value:Int
    
    var commands:Array<String> {
        var result = Array<String>();
        if (self.value | 1 == self.value) {result.append("wink")}
        if (self.value | 2 == self.value) {result.append("double blink")}
        if (self.value | 4 == self.value) {result.append("close your eyes")}
        if (self.value | 8 == self.value) {result.append("jump")}
        if (self.value | 16 == self.value) {return result.reversed()}
        return result
    }
    
    init(_ value:Int) {
        self.value = value
    }
}
