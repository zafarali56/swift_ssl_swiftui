//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


let array1 : Array<String> = ["blue", "orange", "black", "white", "purpil", "green"]
for i in array1 {
    print(i)
}

var range : Int = 10
for index in 1...range {
    print(index)
}

var dict : Dictionary<String,String> = ["YUL":"montral", "kr":"karachi", "om": "oma"]
for (key, types) in dict{
    print("key",key, "value", types)
}
for i in stride(from: 0, to: 100, by: 5){
    print("i \(i)")
}

for i in stride(from: 0, through: 100, by: 5){
    print("i \(i)")
}



