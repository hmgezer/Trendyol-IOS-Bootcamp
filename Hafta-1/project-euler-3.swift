var factorNum = 600851475143
var primeFactor = 2
while factorNum > 1 {
    if(factorNum % primeFactor == 0){
        factorNum /= primeFactor
    }
    else{
        primeFactor += 1
    }
}
print(primeFactor);