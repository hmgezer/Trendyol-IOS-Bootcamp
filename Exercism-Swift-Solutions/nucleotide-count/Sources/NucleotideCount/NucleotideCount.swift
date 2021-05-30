//Solution goes in Sources
class DNA {
    var strand: String
    
    init?(strand: String) {
           let tides:[Character] = ["A", "C", "G", "T"]
           
           for char in strand {
               if !tides.contains(char) {
                   return nil
               }
           }
           
           self.strand = strand
       }

       func count(_ tide: Character?) -> Int{
           var total = 0
           for i in self.strand {
               if i == tide {
                   total += 1
               }
           }
           return total
       }
   
    func counts() -> [String:Int] {
            var total:[String:Int] = ["A":0, "C":0, "G":0, "T":0]
            for i in self.strand {
                switch i {
                case "A":
                    total["A"]! += 1;
                    break;
                case "C":
                    total["C"]! += 1;
                    break;
                case "G":
                    total["G"]! += 1;
                    break;
                case "T":
                    total["T"]! += 1;
                    break;
                default:
                    break;
                }
            }
            return total
        }
}
