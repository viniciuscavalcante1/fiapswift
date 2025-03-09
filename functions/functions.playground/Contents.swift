import UIKit

// Functions allow us to reuse code by encapsulating well-defined operations that can receive values as parameters
// and return results, which can be stored in variables or constants.

// Basic function syntax:
// func functionName(parameter: Type) -> ReturnType {
//     code
//     return value
// }

// Simple function without parameters
func printHello() {
    print("Hello!") // Hello!
}

for number in 1...10 {
    printHello() // Hello!
}


// Function that accepts a single parameter
func say(message: String) {
    print(message)
}

say(message: "Hello functions!") // Hello functions!


// Function that accepts multiple parameters and returns a value
func sumNumbers(a: Int, b: Int) -> Int {
    return a + b
}

var result = sumNumbers(a: 10, b: 20)
print(result) // 30


// Swift allows parameter labels: an external name for calling the function and an internal name for use within the function
// This improves readability but should be used judiciously when it enhances code clarity
func sayTo(welcome message: String, to person: String) {
    print("\(message), \(person)!")
}

sayTo(welcome: "Hello", to: "world") // Hello, world!


// Omitting the external parameter name for the first parameter using underscore
func sayTo2(_ message: String, to person: String) {
    print("\(message), \(person)!")
}

sayTo2("Hello", to: "world") // Hello, world!


// Omitting all external parameter names
func sumNumbers2(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}

print(sumNumbers2(3, 7)) // 10
