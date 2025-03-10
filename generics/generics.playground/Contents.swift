import UIKit

// Generics are a powerful feature in Swift that allow you to write flexible, reusable functions
// and types that can work with any data type. Instead of writing code constrained to a specific type,
// generics let you define a placeholder type that will be specified later when the code is used.

func swapInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

var int1 = 20
var int2 = 30

swapInts(&int1, &int2)

print("int1: \(int1)")
print("int2: \(int2)")

// The 'inout' parameter modifier is used when you need to modify a parameter within a function.
// By default, parameters in Swift are constants and cannot be modified.
// The 'inout' keyword indicates that:
// 1. The parameter is passed by reference, not by value
// 2. Changes to the parameter inside the function will affect the original variable outside
//
// This is particularly important for value types like Int, String, and other structs in Swift.
// When passed to functions, value types are normally copied (pass-by-value), but 'inout'
// allows them to be modified directly.

// To make our swap function work with any type, we can use generics.
// The generic version will be more flexible and reusable across different data types.

// Generic implementation of the swap function:
// - <T> defines a type parameter named T
// - T becomes a placeholder for the actual type determined at the call site
// - Both parameters must be of the same type T

func swapValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

var name1 = "John"
var name2 = "Jane"

swapValues(&name1, &name2)
print(name1, name2)

var value1: Double = 10.5
var value2: Double = 20.5

swapValues(&value1, &value2)
print(value1, value2)
