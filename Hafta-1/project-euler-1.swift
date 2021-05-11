var firstMultiples = 3
var secondMultiples = 5
var number = 0
for i in 1..<1000 {
    if(i % firstMultiples == 0 || i % secondMultiples == 0){
        number += 1
    }
}
print(number);
