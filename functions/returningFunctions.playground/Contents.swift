import UIKit

// As First-Class Citizens in Swift, functions can be returned from other functions.
// This is a powerful feature that enables more flexible and dynamic code.

// Swift allows us to create type aliases to simplify complex type signatures
// Type aliases make the code more readable and maintainable

// Here we create a type alias for a function that takes two Int parameters and returns an Int
typealias Op = (Int, Int) -> Int

// Basic arithmetic functions that will be returned by our higher-order function

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, _ b: Int) -> Int {
    return a - b
}

func multiply(_ a: Int, _ b: Int) -> Int {
    return a * b
}

func divide(_ a: Int, _ b: Int) -> Int {
    return a / b
}

// This function demonstrates returning another function as its result
// Based on the string parameter, it returns the appropriate arithmetic function
func getOperation(_ operation: String) -> Op {
    switch operation {
    case "soma":
        return sum
    case "subtração":
        return subtract
    case "multiplicação":
        return multiply
    default:
        return divide
    }
}

// Here we call getOperation to get a function, then call that returned function with parameters
var operation = getOperation("subtração")
print(operation(10, 20))
