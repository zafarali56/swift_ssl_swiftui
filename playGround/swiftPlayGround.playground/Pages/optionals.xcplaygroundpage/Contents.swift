//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@nex")

//Optionals
var name : String?

//name = "zafar"
//Conditional unwrapping
if let name = name{
    print(name)
}



//force unwrapping
//print(name!)

@MainActor func testGuard (){
    
    //conditional unwrapping
    guard let value = name  else {
        print("name could not unwrap")
        return
    }
    
    print(value)

}


testGuard()


//optional chaining
print("variable name", name?.count)
if ((name?.count) != nil){
    
}


if let lengthOfName = name?.count {
    print(lengthOfName)
}


//nill coliasing operator

let lenthNameNillCoaled = name?.count ?? 0
print(lenthNameNillCoaled)
