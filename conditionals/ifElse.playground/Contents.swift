import UIKit

// If - else - else if

let number = 11

// Simple if
if number % 2 == 0 {
    print("Even Number")
} else {
    print("Odd Number")
}


var temperature = 18
var climate = ""

// Else If
if temperature <= 0 {
    climate = "Very Cold"
} else if temperature < 14 {
    climate = "Cold"
} else if temperature < 21 {
    climate = "Mild"
} else if temperature < 30 {
    climate = "Hot"
} else {
    climate = "Very hot"
}
