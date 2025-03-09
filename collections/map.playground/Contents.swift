import UIKit

// When working with collections, we often think about using for-in loops to process elements,
// but Swift also provides powerful higher-order functions that use closures for more concise and expressive code.

// The map method is a collection method that iterates through each element, applies a transformation via a closure,
// and returns a new collection containing the transformed elements. The original collection remains unchanged.

let names = ["Alice", "Bob", "Charlie"]

// Applying map to transform each name to uppercase
// This creates a new array without modifying the original 'names' array
let uppercasedNames = names.map({$0.uppercased()})

print(uppercasedNames)
