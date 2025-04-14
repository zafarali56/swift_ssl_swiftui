//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

var condition = 0


while (condition < 40){
    if condition < 0 {
        print("it it really cold today")
    } else if (condition > 0 && condition < 20){
        print("its little warmer today")
    } else {
        print("Its very warm")
        break
    }
    condition += 3
}
