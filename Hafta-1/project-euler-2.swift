var fibonacciEvenArray : [Int] = [];
var limitNumber = 4000000;
var fibonacciNumberOne = 1
var fibonacciNumberTwo = 1
var fibonacciNumberSum = 0
var lastNumber = 0
while fibonacciNumberSum <= limitNumber {
    fibonacciNumberSum = fibonacciNumberOne + fibonacciNumberTwo
    if fibonacciNumberSum % 2 == 0 {
        fibonacciEvenArray.append(fibonacciNumberSum)
    }
    fibonacciNumberOne = fibonacciNumberTwo
    fibonacciNumberTwo = fibonacciNumberSum
}
var newTotalArray = 0

for i in fibonacciEvenArray{
    newTotalArray += i
}

print(fibonacciEvenArray);
print(newTotalArray);
