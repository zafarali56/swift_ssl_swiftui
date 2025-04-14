//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


var randomNumber = 0


while(randomNumber < 10){
    randomNumber += 1
    print("radomNumber = \(randomNumber)")
    break
}

for i in 0...10{
    print(i)
    if i == 5 {
        break
    }
}



//Repeat while

var index = 0


repeat{
    index += 2
    print("index = \(index)")
    break
} while(index < 20)
