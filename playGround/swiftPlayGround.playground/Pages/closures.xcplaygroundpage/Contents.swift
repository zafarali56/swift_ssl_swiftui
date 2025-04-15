//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)



//Closures Function with but without capturing values

var studentNames = ["Alice", "BOb", "Jane", "Tom"]
func sortReverse (name1: String, name2: String)-> Bool{
    return name1 > name2
}
print(studentNames.sorted(by: sortReverse))

studentNames.sorted{s1, s2  in
     return s1 > s2
}



studentNames.sorted{s1,s2 in s1>s2}


studentNames.sorted{$0 > $1}



studentNames.sorted(by: >)



func aFuncWithClosure(closure: () -> Void){
    
}
var completionClosure = {(image: String) -> Void in
    print("Image description", image)
    
}

var error = {(error: Error) -> Void in
    print("Encoutered error", error)
}
//
//var loadPicture(completion)



func escapingClosure(studentId:  String, completion: @escaping ([String])-> ()){
    DispatchQueue.global().async{
        completion(["alice", "kotlin"])
    }
}

var studentNamez = ["kot", "swit", "jax", "lox"]
func autoClosure(processor : @autoclosure ()-> (String)){
    let student = processor()
    print(student)
}
autoClosure(processor: studentNamez.removeFirst())
print(studentNamez)
