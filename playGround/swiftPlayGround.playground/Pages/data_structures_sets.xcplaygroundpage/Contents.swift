//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


var set = Set<String>()
print(set)

set.insert("kotlin")
set.insert("rust")
set.insert("ruby")
print(set)

if set.contains("kotlin"){
    print("Contain")
}

set.remove("kotlin")


if set.contains("kotlin"){
    print("Contain")
}
else {
    print("no")
}




set = ["c++", "oberon", "squel"]
for i in set {
    print(i)
}
print("==================")
set.sorted()

for i in set{
    print(i)
}
set.count

set = ["golang"]
print(set)
set.count



//operations on set


//-union
var oddNumber : Set<Int> = [1,3,5,7,9]
var evenNumber : Set<Int> = [2,4,6,8,10]
var primeNumber : Set<Int> = [1,3,5,7]
var union = oddNumber.union(evenNumber)
print(union.sorted())


//-intersection


var intersection = oddNumber.intersection(evenNumber)
print(intersection)
//-substracting

var subtraction = oddNumber.subtracting(evenNumber)
print(subtraction)
//-symmetric difference


var symmetricDiff = oddNumber.symmetricDifference(evenNumber)
print("diff",symmetricDiff.sorted())


//set memberShip and equality
//superset
//eqaulity
//strict subset
//strict superset


let subset = primeNumber.isSubset(of: oddNumber)
print(subset)

let isSuperset = primeNumber.isSuperset(of: evenNumber)
print("is superset", isSuperset)

let isDisjoint = primeNumber.isDisjoint(with: evenNumber)



var setA : Set<Int> = [1,2,3]
var setB : Set<Int> = [1,2,3]

if setA == setB {
    print("two sets are equal")
}else {
    print("Not equal")
}

let isStrictSuperset = setA.isStrictSuperset(of: setB)


let isStrictSupersetPrime = oddNumber.isStrictSuperset(of: primeNumber)


