import UIKit

// Optional
// with optional, variables can be null (in swift, they call it nil - not in list) or wrapped values

var driverLicense: String?
print(driverLicense) // nil

// When we create an optional, we're creating a type, that when it doesn't have any value assigned to it, it returns nil.
// When it does have a value assigned, it wrappes the value inside a container. To access it, we have to unwrap the optional.

driverLicense = "123" // wrapping the value
print(driverLicense) // Optional("123")

// Unwrapping with !
// When we use the character ! after an optional variable, we unwrap it, getting the value back. But you have to be sure
// that the variable has any value assigned to it, because if not, the app will crash.

print(driverLicense!) // unwraped with ! 123, but it isn't the safest option, because it may crash if the variable doesn't have any value assigned to itself.
// __lldb_expr_7/optionals.playground:19: Fatal error: Unexpectedly found nil while unwrapping an Optional value


// To unwrap in a safe manner, we can use a technique called Optional Binding, that it's try to unwrap assigning it to a new variable, that will only be
// created if the operation succeeds, or, in other words, has a value in the optional.

var driverLicense2: String?

driverLicense2 = "1234"
let license2 = driverLicense2
print(license2)


// If let is a pattern that applies optional binding. It will unwrap the ooptional into a new variable if the optional is not nil.
if let license = driverLicense2 { // the variable license only exists inside these block.
    print("The motorist driver license is: \(license)")
} else {
    print("The person doesn't have a driver license.")
}


var driverLicense3: String?


// Guard
// We can also use guard command, only appliable inside a function or it should throw an error. Guard creates a new variable if optional is nil to be able to use it in a safe manner without crashes.
// The main advantage of using guard is being able to use the variable outside his scope.

func check(driverLicense: String?) {
    guard let license3 = driverLicense else {¼
        return
    }
    print("The motorist driver license is: \(license3)")
}

check(driverLicense: "1234567")


// Implicitly Unwrapped Optional
// We can also create an optional that borns implicitly unwrapped. It can be nil, but if it has any value, it could be accessed without optional binding, guard or ! operator.
// However, this is also a not encouraged technique.

var alias: String!
// Meu apelido é nil
print("Meu apelido é \(alias)")
alias = "Pelé"
// Meu apelido é PELÉ
print("Meu apelido é \(alias.uppercased())")
// __lldb_expr_41/optionals.playground:66: Fatal error: Unexpectedly found nil while implicitly unwrapping an Optional value


// Nil-Coalescing Operator
// Binary operator. We put on the left side an optional variable and on the right side the value we would like to use in case of nil value.
// This way, if optional has a value, it will be unwrapped, otherwise, the default value would be chosen.

var age: Int?
let age2 = age ?? 0
print("Age is \(age2)") // 0

age = 25
let age3 = age ?? 0
print("Age is \(age3)")

var age4: Int?
print("Your age is \(age4 ?? 18)")


// Optional Chaining
// We use optional chaining when we want to execute a method in optional variables.
// Optional chaining consists in using ? after optional before calling a method. This way we can execute some operation in the variable and the code isn't executed if it's nil, without errors.

var weekDay: String?
print(weekDay?.uppercased()) // nil
weekDay = "Monday"
print(weekDay?.uppercased())
