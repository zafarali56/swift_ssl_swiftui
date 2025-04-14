//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


var temperature = 0

switch temperature{
case ..<20:
    print("s")
    
case ..<2:
    print("t")
default:
    print("none")
}



let character: Character = "a"


switch character{
case "a":
    print("character is latin")
case "B":
    print("character is upper latin")
default:
    print("Unkown")
}


let coordinates = (1,0)
switch coordinates {
case (0,0):
    print("the coordinates origin point")
case (_, 0):
    print("the coordinates on x axis")
case (0,_):
    print("the coordinates is on y axis")
    
default:
    print("cant find ")
}



//value binding
let coordinatesz = (1,0)
switch coordinatesz {
case (0,0):
    print("the coordinates origin point")
case (let x, 0):
    print("the coordinates on x axis\(x)")
case (0,let y):
    print("the coordinates is on y axis\(y)")
    
default:
    print("cant find ")
}



//where clause
let coordinatesza = (-2,0)
switch coordinatesza {
case (let x, let y) where x > y:
    print("They are on a line x ===y")
case (let x,let y) where x  < y:
    print("the coordinates on x axis\(x)")
case (0,let y):
    print("the coordinates is on y axis\(y)")
    
default:
    print("cant find ")
}

//compound cases in switch
let char = "A"
switch char {
case "a", "A":
    print("They are on a line x ===y")
case "b", "B":
    print("the B")
case "c", "C":
    print("the coordinates is on y axis")
    
default:
    print("cant find ")
}






//Fall through


let chard = "A"
switch chard {
case "a", "A":
    print("Character matched")
    fallthrough
case "b", "B":
    print("the B")
case "c", "C":
    print("the coordinates is on y axis")
default:
    break
}


class Exercise {
    // Implement a function that takes in an integer as a parameter. The function implements the following logic using switch interval statements as learnt in the lecture:
    // - if the integer is below 10, then the function returns 0,
    // - if the integer is greater than or equal to 10 and less than 20, then the function returns 1,
    // - if the integer is greater than or equal to 20 and less than 30, then the function returns 2,
    // - in all other cases it returns 3.
    static func implementSwitchWithRanges(testValue: Int) -> Int {
        switch testValue {
        case ..<10:
            return 0
        case ..<0:
            return 1
        case ...30:
            return 2
        default :
            return 3
        }
    }
}
