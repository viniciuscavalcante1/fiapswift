import UIKit

// In case of multiple else ifs, switch is more adequate, because it's create to validate a series of possible cases.

// In swift, switches must validates every single option, often containing a default option.

var number = 7
switch number % 2 {
case 0:
    print("\(number) is even")
default:
    print("\(number) is odd")
}


// Multiple statements in the same case
let letter = "z"
switch letter {
case "a", "e", "i", "o", "u":
    print("\(letter) is a vowel")
default:
    print("\(letter) is a consonant")
}


// Letter range
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


// Number range
let speed = 33.0
switch speed {
case 0.0..<20.0:
    print("First march")
case 20.0..<40.0:
    print("Second march")
case 40.0..<50.0:
    print("Third march")
case 50.0..<90.0:
    print("Fourth march")
default:
    print("Fifth march")
}
