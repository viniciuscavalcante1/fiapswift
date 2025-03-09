import UIKit

// When dealing with multiple conditions, a switch statement is more appropriate than multiple 'else if' statements
// because it's specifically designed to evaluate multiple possible cases.

// In Swift, switch statements must be exhaustive, covering all possible values,
// which typically requires including a default case.

var number = 7
switch number % 2 {
case 0:
    print("\(number) is even")
default:
    print("\(number) is odd")
}


// Multiple values can be tested in a single case
let letter = "z"
switch letter {
case "a", "e", "i", "o", "u":
    print("\(letter) is a vowel")
default:
    print("\(letter) is a consonant")
}


// Using character ranges in switch cases
switch letter {
case "a"..."f":
    print("You're in class 1")
case "g"..."l":
    print("You're in class 2")
case "m"..."r":
    print("You're in class 3")
default:
    print("You're in class 4")
}


// Using numeric ranges in switch cases
let speed = 33.0
switch speed {
case 0.0..<20.0:
    print("First gear")
case 20.0..<40.0:
    print("Second gear")
case 40.0..<50.0:
    print("Third gear")
case 50.0..<90.0:
    print("Fourth gear")
default:
    print("Fifth gear")
}
