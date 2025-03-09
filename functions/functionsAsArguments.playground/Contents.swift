import UIKit

// In Swift, functions are First-Class Citizens, meaning they are entities that support all operations
// typically allowed for other types. This includes assigning functions to variables, passing them as
// parameters to other functions, and returning them from functions.

// Functions can be used as arguments to other functions, just like primitive types such as Int and String.

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func subtract(_ a: Int, b: Int) -> Int {
    return a - b
}

func divide(_ a: Int, b: Int) -> Int {
    return a / b
}

func multiply(_ a: Int, b: Int) -> Int {
    return a * b
}


// The function below demonstrates higher-order function usage by accepting another function as a parameter
// The operation parameter has type (Int, Int) -> Int, which is a function that takes two Ints and returns an Int

func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

let result = applyOperation(10, 20, operation: multiply)
print("Result: \(result)")
