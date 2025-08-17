import UIKit

// In Swift, classes require initializers (constructor methods) to ensure all properties have values before an instance is created
// Unlike regular methods, initializers use the 'init' keyword instead of 'func' and don't specify a return type
// It's common practice to use parameter names that differ from property names to avoid naming conflicts

class Person {
    // Properties that define characteristics of a Person
    var name: String          // Must be initialized in constructor since no default value is provided
    var age: Int = 0          // Optional property with default value
    var married: Bool = false // Optional property with default value
    
    // Commented-out example of a read-only computed property
    
    /*var maritalStatus: String {
        if married {
            return "married"
        } else {
            return "single"
        }
    }*/
    
    // Computed property with both getter and setter methods
    // The getter calculates and returns a value based on other properties
    // The setter allows us to modify the underlying property (married) when this property is assigned a new value
    // Swift automatically provides a constant named 'newValue' that represents the value being assigned
    var maritalStatus: String {
        get {
            if married {
                return "married"
            } else {
                return "single"
            }
        }
        
        set {
            if newValue == "married" {
                married = true
            } else {
                married = false
            }
        }
    }
    
    // Static class property
    static let animalClass: String = "Mammal"
    
    // Class method
    class func getInfo() -> String {
        return "This is a class method. Class methods always starts with class before func definition. By the way, I'm a \(Person.animalClass), and I have a name, a marital status and age."
    }
    
    // Initializer method that sets up a new Person instance
    init(aName: String, isMarried: Bool) {
        name = aName
        married = isMarried
        // Note: 'age' doesn't need to be initialized here since it has a default value
    }
    
    // Instance methods that define behaviors of a Person
    func speak(sentence: String) {
        if age < 3 {
            print("\(name) babbling: \(sentence)") // Young children babble instead of speaking clearly
        } else {
            print("\(name): \(sentence)")
        }
    }
    
    func introduce() -> String {
        return "Hello, my name is \(name)."
    }
}

// Inheritance

// Here, we stand the inheritance by treating it like it's some kind of type attribution.
class Student: Person {
    var rm: String
    
    // We are likely to implement a new property called rm, so, we also need to build a new constructor method, with all the
    // super class required properties (aName, isMarried) and also the new property.
    init(aName: String, isMarried: Bool, aRM: String) {
        rm = aRM
        
        // Firstly, we introduce the new property, then, we can start the super properties with super constructor method (super.init)
        super.init(aName: aName, isMarried: isMarried)
    }
    
    // We can override super properties and methods with override reserved word before func, and we can also use the super method as well.
    override func introduce() -> String {
        return "\(super.introduce()) and my rm is \(rm)"
    }
}

// Creating a new Person instance with specified name and marital status
let jobs = Person(aName: "Steve Jobs", isMarried: true)

// Modifying a property after initialization
jobs.age = 39

// Creating another Person instance
let onePerson = Person(aName: "Paulo", isMarried: false)

// Using the setter of the computed property to change the underlying 'married' property
onePerson.maritalStatus = "married"
print(onePerson.married, onePerson.maritalStatus) // Will print: true married

// Using class properties and class methods
print(Person.getInfo())
print(Person.animalClass)

// Using inheritance. student is both a Student and a Person!
let student = Student(aName: "João", isMarried: false, aRM: "123456789")
print(student.rm)

// Using overrided method
print(student.introduce())
