import Foundation

var greeting = "Hello, playground"

// MARK: - Protocols

protocol PersonProtocol {
    var name: String { get set }
    var description: String { get }
    func locate()
    mutating func update()
}

protocol StudentProtocol: PersonProtocol {
    var studentID: Int { get set }
}

// MARK: - Structs

struct Student: StudentProtocol {
    var studentID: Int
    var name: String

    var description: String {
        return "Student with ID \(studentID), Name: \(name)"
    }

    func locate() {
        print("\(name) is currently in the library.")
    }

    mutating func update() {
        name += " (updated)"
    }
}

var student: StudentProtocol = Student(studentID: 1, name: "Xsfst")
print(student.description)


// MARK: - Vehicle Example

protocol CarProtocol { }

class Vehicle { }

class Car: Vehicle, CarProtocol { }


// MARK: - Enum Protocol

protocol StudentEnumProtocol {
    mutating func update()
}

enum StudentEnum: StudentEnumProtocol {
    case undergraduate
    case graduate

    mutating func update() {
        self = .undergraduate
    }
}

class StudentEnumClass: StudentEnumProtocol {
    func update() {
        print("StudentEnumClass updated.")
    }
}


// MARK: - Initializer Protocol

protocol PlaneProtocol {
    init(capacity: Int)
    init?(capacity: Int, milage: Int)
}

class PassengerPlane: PlaneProtocol {
    var capacity: Int
    var milage: Int

    required init(capacity: Int) {
        self.capacity = capacity
        self.milage = 0
    }

    required init?(capacity: Int, milage: Int) {
        guard milage >= 0 else {
            return nil
        }
        self.capacity = capacity
        self.milage = milage
    }
}
