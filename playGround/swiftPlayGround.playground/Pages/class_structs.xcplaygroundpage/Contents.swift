//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

struct Student{
    let id : Int
    var name : String
    var adress : String
    func update(){
        
    }
}


class University{
    let id: Int
    var name: String
    var students: [Student] = []
    
    init(id: Int, name: String, students: [Student]) {
        self.id = id
        self.name = name
        self.students = students
    }
    
}


var studeA = Student(id: 1, name: "ALice", adress: "009 Alska frenco, CA")
var universityA = University(id: 1, name: "Harvard university", students: [studeA])
print("Student adress", studeA.adress)
print("University", universityA.name)



studeA.update()


studeA.name = "Bob"

print("Student A name is:", studeA.name)

//pass by value
var studentACopy = studeA
studentACopy.adress = "1001 tonswand"


print(studentACopy.adress)
print(studeA.adress)


//pass by reference


var universityRef = universityA
universityA.name = "VU"

print(universityA.name)
print(universityRef.name)


if universityA !== universityRef{
    print("Both are same")
}


//Strcuts are pass by value classes are pass by refrence
