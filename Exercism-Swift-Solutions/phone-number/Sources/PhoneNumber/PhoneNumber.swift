//Solution goes in Sources
class PhoneNumber : CustomStringConvertible {
   var number: String

   var areaCode: String {
        return String( number.prefix(3) )
   }

   var description :String {
        let chars = self.number

        return "(" + areaCode + ") " +
            String(chars.prefix(6).suffix(3)) + "-" +
            String(chars.suffix(4))
   }

   init ( _ raw: String ) {
    self.number = String( raw.filter {
        switch($0) {
            case "0"..."9": return true
            default:        return false
        }
    } )

    if self.number.count == 11 &&
            String(self.number.prefix(1)) == "1" {
        self.number = String( self.number.suffix(10) )
    }

    if self.number.count != 10 {
        self.number = "0000000000"
    }
   }

}
