import Foundation


var cities : Array<String> = []



cities.append("Berlin")


print(cities)


var streets : Array<String> = []
streets = Array(repeating: "nazimabad", count: 12)


print(streets.count)



var array1:  Array<Int> = [1,2,3]

var array2: Array<Int> = [4,5,6]

var array3: Array<Int> = array1 + array2

print(array3)

if array3.isEmpty{
    print("Array 3 is empty")
}
else {
    print("Its not")
}


array1 += [6,7,8,9,10]


print(array1)


print(array3[3])

if let value = array3.first{
    print(value)
}


if let lastValue = array3.last {
    print(lastValue)
}


print("last value\(array3[array3.count - 1])")





print("array3: total",array3.count,"also the values: ", array3)


array3[4...5] = [10,10,10,10,10,10]

print("array3: total",array3.count,"also the values: ", array3)



array3.insert(7, at: 10)

print(array3)



array3.remove(at:10)

print(array3)


for index in array3 {
    print(index)
}


var array4 = [1,2,4,5,6]
print(array4)



class Exercise1{
    //1. Implement a function that takes in array containing integer numbers and finds the sum of all elements in the array.
    static func findSum(from array: [Int]) -> Int {
       
        var sum : Int = 0
        for elements in array {
           sum += elements
        }
        
    
return sum

    }
    
    

    //2. Implement a function that takes in array containing strings and returns the sorted array.
    static func sort(array: [String]) -> [String] {
        
           
        return array.sorted()
        }
    
}

var array0 : Array<Int> = [1,2,3,4,5]



Exercise1.findSum(from: [1,2,4])
Exercise1.sort(array: ["D","B","C"])



class Exercise {
    //1. Implement a function that takes two arrays containing numbers and returns a single array containing content of both arrays.
    static func merge(array1: [Int], array2: [Int]) -> [Int] {
        var array3 : Array<Int> = array1 + array2
        return array3
    }
    
    //2. Implement a function that takes in array and returns the biggest element in the array.
    static func findMaxElement(in array: [Int]) -> Int? {
        return array.min()
        
    }
}
