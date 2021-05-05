/* 
 Static keywords neden kullanırız?
 static keywordler kullandığımızda alt sınıflarda override edemeyiz. final bir yapıdadır. Bu yüzden yazılımsal tasarımımızda override etmek istemeyeceğimiz sınıflarda static ön ekini kullanabiliriz.
 */

struct PersonalTeam {
    static var team = "Fenerbahçe";
    
    var name: String
    var age: Int
}

let player = PersonalTeam(name: "Murat", age: 24)
print(PersonalTeam.team)

// override static var team = "Beşiktaş"; ERROR -> !!! Static properties may only be declared on a type !!! 
