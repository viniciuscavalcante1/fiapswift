import UIKit

// Assignment operator (=) - Similar to Python

var height: Double = 1.75
let pi: Double = 3.14
var a = 12
var b = 3
var c = 7
var d = 3
var newValue = 5
var yes = true, no = false
var grade = 7.5

// Arithmetic operators (+, -, *, /, %) - Similar to Python

// +

var sum = a + b
print("Sum of \(a) and \(b) is \(sum)") // Sum of 12 and 3 is 15


// -

var subtraction = a - b
print("Subtraction of \(a) from \(b) is \(subtraction)") // Subtraction of 12 and 3 is 9


// *

var multiplication = a * b
print("Multiplication of \(a) and \(b) is \(multiplication)") // Multiplication of 12 and 3 is 36

// /

var division = a / b
print("Division of \(a) by \(b) is \(division)") // Division of 12 by 3 is 4

// %

var remainder = a % b
print("Remainder of \(a) divided by \(b) is \(remainder)") // Remainder of 12 divided by 3 is 0

// unary -

let negativeNumber = -12
print("The negative number is \(negativeNumber)") // The negative number is -12

// unary +

let positiveNumber = +negativeNumber
print("Using unary + on \(negativeNumber) results in \(positiveNumber)") // Using unary + on -12 results in -12



// Compound operators (+=, -=, *=, /=, %=) - Similar to Python
// Note: Swift doesn't have increment (++) or decrement (--) operators

// +=

newValue += a
print("After adding \(a) to newValue, the result is \(newValue)") // After adding 12 to newValue, the result is 17

// -=

newValue -= b
print("After subtracting \(b) from newValue, the result is \(newValue)") // After subtracting 3 from newValue, the result is 14

// *=

newValue *= a
print("After multiplying newValue by \(a), the result is \(newValue)") // After multiplying newValue by 12, the result is 168

// /=

newValue /= a
print("After dividing newValue by \(a), the result is \(newValue)") // After dividing newValue by 12, the result is 14

// %=

newValue %= b
print("After taking the remainder of newValue divided by \(b), the result is \(newValue)") // After taking the remainder of newValue divided by 3, the result is 2



// Logical operators (&&, ||, !) - Always return true or false

// AND (&&)
print(yes && no) // false

// OR (||)
print(yes || no) // true

// NOT (!)
print(!yes) // false



// Comparison operators

print("a = \(a)") // a = 12
print("b = \(b)") // b = 3
print("c = \(c)") // c = 7
print("d = \(d)") // d = 3

// Greater than (>)

print("a (\(a)) > b (\(b)) = \(a > b)") // a (12) > b (3) = true

// Less than (<)

print("a (\(a)) < b (\(b)) = \(a < b)") // a (12) < b (3) = false


// Greater than or equal to (>=)

print("b (\(b)) >= d (\(d)) = \(b >= d)") // b (3) >= d (3) = true

// Less than or equal to (<=)

print("a (\(a)) <= c (\(c)) = \(a <= c)") // a (12) <= c (7) = false

// Equal to (==)

print("b (\(b)) == d (\(d)) = \(b == d)") // b (3) == d (3) = true

// Not equal to (!=)

print("b (\(b)) != d (\(d)) = \(b != d)") // b (3) != d (3) = false



// Conditional ternary operator (condition ? "result if true" : "result if false")
// This is Swift's only ternary operator - it works like a simplified if statement
// Similar to Excel's IF function

print("grade = \(grade)") // grade = 7.5

var result = grade > 7.0 ? "approved" : "failed"
print("result = \(result)") // result = approved


// Nil Coalescing Operator (??) - Unwraps an optional and provides a default value, similar to SQL's COALESCE

var age: Int?

let myAge = age ?? 0
print("myAge = \(myAge)") // myAge = 0

age = 25
let myAge2 = age ?? 0
print("myAge2 = \(myAge2)") // myAge2 = 25



// Range Operators: Closed Range (...) and Half-Open Range (..<)

let numbers = 1...10
print(numbers) // 1...10

for number in numbers {
    print(number) // print from 1 to 10
}

let newNumbers = 1..<10
print(newNumbers) // 1..<10

for number in newNumbers {
    print(number) // prints numbers from 1 to 9 (excludes 10)
}
