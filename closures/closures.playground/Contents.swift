import UIKit

// Previously, in the applyOperation function example, we passed one of four predefined functions as a parameter.
// But what if we want to create a new function on the spot instead of using one that was already defined?
// This is where closures come in. They're similar to Python's lambda functions.

// Closures are anonymous code blocks that function like nameless functions.
// They can capture and store references to variables and constants from their surrounding context.

// Standard function syntax for comparison:
/*
func functionName(parameter: Type) -> ReturnType {
    // code
    return returnValue
}
*/

// Closure syntax:
/*
{ (parameter: Type) -> ReturnType in
    // code
    return returnValue
}
*/

func applyOperation(_ a: Int, _ b: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(a, b)
}

// Full closure syntax: implementing a modulo operation
print(applyOperation(14, 5, operation: {(x: Int, y: Int) -> Int in return x % y}))

// Swift's type inference allows us to simplify closures in several ways:

// Step 1: Omitting parameter types since they can be inferred from the function declaration
print(applyOperation(14, 5, operation: {x, y -> Int in return x % y}))

// Step 2: Omitting the return type as it can be inferred from the function's expected type
print(applyOperation(14, 5, operation: {x, y in return x % y}))

// Step 3: Using shorthand argument names ($0, $1, etc.) instead of declaring parameter names
// $0 represents the first parameter, $1 the second, and so on
print(applyOperation(14, 5, operation: {return $0 % $1}))

// Step 4: Implicit returns - single expression closures can omit the return keyword
print(applyOperation(14, 5, operation: {$0 % $1}))
