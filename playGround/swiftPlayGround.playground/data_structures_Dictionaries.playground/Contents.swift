import UIKit

//--------------//
// Collections //
//------------//
// Dictionary: unordered collection of key value pairs

var studentIdName: Dictionary<Int, String> = [:]
var zipCodeDistrict: [Int: String] = [:]

zipCodeDistrict = [90001: "Main", 80001: "Downtown"]

// access
studentIdName[1] = "Thomson"
studentIdName[2] = "Jason"
studentIdName[3] = "Jane"

print("studentIdName = \(studentIdName)")
print("zipCodeDistrict = \(zipCodeDistrict)")



// modify
zipCodeDistrict[90001] = "Oakville"
print("zipCodeDistrict = \(zipCodeDistrict)")

if let oldValue = zipCodeDistrict.updateValue("Cityville",
                                              forKey: 80001) {
    print("old value has been replaced \(oldValue)")
}

// remove

zipCodeDistrict[80001] = nil
print("zipCodeDistrict = \(zipCodeDistrict)")

let oldValue = zipCodeDistrict.removeValue(forKey: 90001)
print("oldValue = \(oldValue)")

print("zipCodeDistrict = \(zipCodeDistrict)")

// iteration
for (key, value) in studentIdName {
    print("key = \(key), value = \(value)")
}

for key in studentIdName.keys.sorted() {
    print("key = \(key)")
}

for value in studentIdName.values.sorted() {
    print("value = \(value)")
}
