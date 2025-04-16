//: [Previous](@previous)

import Foundation
import SwiftUI
var greeting = "Hello, playground"

//: [Next](@next)

protocol flyable {
    func fly(to: String, from: String)
}


extension Array: flyable where Element : flyable{
    func fly(to: String, from: String) {
        for object in self{
            object.fly(to: to, from: from)
        }
    }
}


struct MilitaryPlane{
    func fly(to: String, from: String){
        print("military plane is flying from \(from) to \(to)")
    }
}


//Synthosized protocols


struct ball: Equatable, Hashable{
    var radius : Int
    var color : Color
}

//Equatable protocols can compare two objects === like this


//Hasable protols has eassentially representation of the object it has a hasValue that can be compared with other objects

let bigGreeball = ball(radius: 10, color: .green)
let smallRedBall = ball(radius: 11, color: .red)
let anotherBigGreenBall = ball(radius: 10, color: .green)


if bigGreeball == smallRedBall{
    print("they are comparable object")
}
if bigGreeball == anotherBigGreenBall{
    print("same shit")
}
else {
    print("No ser")
}


enum BallType:   Equatable, Hashable, Comparable {
    case kids
    case soccer
    case fotball
    case baseketball
}
//Using order as compare upper the lower in rank and below is higher the rank

let kidsBall: BallType = .kids
let soccerBall : BallType = .soccer

print(kidsBall > soccerBall)
print(kidsBall < soccerBall)
print( kidsBall == soccerBall)



//synthesize implementations


