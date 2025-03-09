import UIKit

// The filter method is a powerful collection operation that allows us to create a new collection
// containing only the elements that satisfy a given condition specified by a closure.

let names = ["Alice", "Bob", "Charlie", "David"]

// Applying filter to select only names with fewer than 5 characters
// The closure returns a Boolean value for each element:
// - true: the element is included in the new collection
// - false: the element is excluded
let filteredNames = names.filter({$0.count < 5})
print(filteredNames) // Outputs: ["Bob"]
