//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func countNumbers(input1: Int, input2: Int)-> Int{
    let result = input1 + input2
    return result
}



let sum = countNumbers(input1: 5, input2: 20)
print(countNumbers(input1: 5, input2: 20))




//Multiple return type values


func minMax(listOfIntegers : [Int]) -> (minValue: Int, maxValue: Int){
    var minValue = listOfIntegers[0]
    var maxValue = listOfIntegers[0]
    for digits in listOfIntegers{
        if digits < minValue{
            minValue = digits
        }
        if digits > maxValue{
            maxValue = digits
        }
    }
    return (minValue,maxValue)
}
let minMaxResult = minMax(listOfIntegers: [1,2,4,5])

print("min:",minMaxResult.maxValue, "Min:",minMaxResult.minValue)


//implicit return types


func multiplyNumbers (num1: Int, num2: Int) -> Int{
     num1 * num2
}


print(multiplyNumbers(num1: 5, num2: 20))


//argument label and parameter names

func greetPerson(_ name: String){
    return print("\(name) hi")
}
greetPerson( "zafar")



func calculateResult (num1: Int, num2: Int = 50 )-> Int{
    num1+num2
}


calculateResult(num1: 20)



//variadic parameter


func calculatorAverage (withInput number: Double...) -> Double {
    var averageResult = 0
    var calculateAvg : Double = 0
    var totalCount = 0
    for n in number{
        calculateAvg += n
        totalCount += 1
        
        
    }
    return Double(calculateAvg / Double(totalCount))
}
print(calculatorAverage(withInput:  1,2,3,4,5,6))



//inout parameters


func greeting(person: inout String){
    person = "bob"
}

var name = "zafar"
print(greeting(person: &name))
print(name)



//Function type
//(Double...)->Double
//()-> Void
func subtractTwoNumber(num1: Int, num2: Int)-> Int {
    return num1 - num2
}

//i fucking great feature function alias where it is referencing the function of main function as variable
var subtractFunc : (Int, Int) -> Int = subtractTwoNumber
print(subtractFunc(5,1))




func showResult (function : (Int, Int) -> Int, num1: Int, num2: Int ) {
   let result = function(num1, num2)
    print(result)
}


print(showResult(function: subtractFunc, num1: 20, num2: 50))
func deterMinedMathfunc ()-> (Int,Int)->Int{
    return subtractTwoNumber
}
let functToUse = deterMinedMathfunc()
print(functToUse(50,30))




//Nested Function


func hightLevelFunc (num1: Int, num2: Int) -> Int{
    func addSum(_ number1: Int, _ number2: Int)->Int{
        return number1+num2
    }
    return addSum(num1, num2)
}



let resultFunct = hightLevelFunc(num1: 12, num2: 12)
print(resultFunct)
