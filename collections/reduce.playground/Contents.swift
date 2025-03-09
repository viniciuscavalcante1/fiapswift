import UIKit

// The reduce method combines all elements in a collection into a single value.
// It's particularly useful for calculating sums, finding maximum/minimum values,
// or any operation where you need to accumulate a result across all elements.

var transactions = [500.0, -45.0, 200.0, 300.0, -100.0]

// The reduce method takes two parameters:
// 1. initialResult: The starting value (0.0 in this case)
// 2. nextPartialResult: A closure that combines the current running result with each element
//
// For each element in the collection, reduce calls the closure with two arguments:
// - $0: The accumulated result so far (starting with initialResult)
// - $1: The current element from the collection
//
// In this example, we're calculating the sum of all transactions to find the final balance
let balance = transactions.reduce(0.0, {$0 + $1})
print(balance)  // Output: 855.0
