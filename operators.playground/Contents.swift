import UIKit

// Attribuition operator (=) - Equivalent to python

var height: Double = 1.75
let pi: Double = 3.14
var a = 12
var b = 3
var c = 7
var d = 3
var newValue = 5
var yes = true, no = false
var grade = 7.5

// Arithmetic operators (+, -, *, /, %) - Equivalent to python

// +

var sum = a + b
print("Sum of \(a) and \(b) is \(sum)") // Sum of 12 and 3 is 15


// -

var subtraction = a - b
print("Subtraction of \(a) and \(b) is \(subtraction)") // Subtraction of 12 and 3 is 9


// *

var multiplication = a * b
print("Multiplication of \(a) and \(b) is \(multiplication)") // Multiplication of 12 and 3 is 36

// /

var division = a / b
print("Division of \(a) and \(b) is \(division)") // Division of 12 and 3 is 4

// %

var remainder = a % b
print("Remainder of \(a) and \(b) is \(remainder)") // Remainder of 12 and 3 is 0

// unary -

let negativeNumber = -12
print("Negative of \(negativeNumber) is \(negativeNumber)") // Negative of -12 is -12

// unary +

let positiveNumber = +negativeNumber
print("Positive of \(negativeNumber) is \(positiveNumber)") // Positive of -12 is -12



// Compound operator (+=, -=, *=, /=, %=) - Equivalent to python
// In Swift, we don't have increment operator ++ nor decriment --

// +=

newValue += a
print("Addition of \(a) to \(newValue) is \(newValue)") // Addition of 12 to 17 is 17

// -=

newValue -= b
print("Subtraction of \(b) from \(newValue) is \(newValue)") // Subtraction of 3 from 14 is 14

// *=

newValue *= a
print("Multiplication of \(b) to \(newValue) is \(newValue)") // Multiplication of 3 to 168 is 168

// /=

newValue /= a
print("Division of \(a) from \(newValue) is \(newValue)") // Division of 12 from 14 is 14

// %=

newValue %= b
print("Remainder of \(b) from \(newValue) is \(newValue)") // Remainder of 3 from 2 is 2



// Logical operators (&&, ||, !) - Always return true or false

// and &&
print(yes && no) // false

// or ||
print(yes || no) // true

// not !
print(!yes) // false



// Comparison operators

print("a = \(a)") // a = 12
print("b = \(b)") // b = 3
print("c = \(c)") // c = 7
print("d = \(d)") // d = 3

// a > b

print("a (\(a)) > b (\(b)) = \(a > b)") // a (12) > b (3) = true

// a < b

print("a (\(a)) < b (\(b)) = \(a < b)") // a (12) < b (3) = false


// b >= d

print("b (\(b)) >= d (\(d)) = \(b >= d)") // b (3) >= d (3) = true

// a <= c

print("a (\(a)) <= c (\(c)) = \(a <= c)") // a (12) <= c (7) = false

// b == d

print("b (\(b)) == d (\(d)) = \(b == d)") // b (3) == d (3) = true

// b != d

print("b (\(b)) != d (\(d)) = \(b != d)") // b (3) != d (3) = false



// Conditional ternary operator (condition ? "result if true" : "result if false")
// only ternary operator - is like if but simpler as an operator
// condition ? "result if true" : "result if false" -> seems like excel if HAHAHAH

print("grade = \(grade)") // grade = 7.5

var result = grade > 7.0 ? "approved" : "repproved"
print("result = \(result)") // result = approved


// Nil Coalescing Operator (??) - Unwrap an optional and define default options, just like SQL coalesce

var age: Int?

let myAge = age ?? 0
print("myAge = \(myAge)") // myAge = 0

age = 25
let myAge2 = age ?? 0
print("myAge2 = \(myAge2)") // myAge2 = 25



// Closed Range and Half Closed Range (... and ..<)

let numbers = 1...10
print(numbers) // 1...10

for number in numbers {
    print(number) // print from 1 to 10
}

let newNumbers = 1..<10
print(newNumbers) // 1..<10

for number in newNumbers {
    print(number) // print from 1 to 9
}
