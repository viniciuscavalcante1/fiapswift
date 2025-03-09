import UIKit

// Conditional statements: if, else, and else if

let number = 11

// Simple if-else statement
if number % 2 == 0 {
    print("Even Number")
} else {
    print("Odd Number")
}


var temperature = 18
var climate = ""

// Multiple conditions using else-if structure
if temperature <= 0 {
    climate = "Very Cold"
} else if temperature < 14 {
    climate = "Cold"
} else if temperature < 21 {
    climate = "Mild"
} else if temperature < 30 {
    climate = "Hot"
} else {
    climate = "Very Hot"
}
