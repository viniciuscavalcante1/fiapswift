import UIKit
import Foundation

// The while loop executes code repeatedly as long as a condition remains true.
// It's essential to include logic that eventually makes the condition false,
// otherwise you'll create an infinite loop.

// The repeat-while loop (do-while in other languages) always executes the code block
// at least once before checking the condition.


// While loop example
var life = 10
while life > 0 {
    print("The player has \(life) lives")
    life -= 1
}


// Repeat-while loop example
var tries = 0
var diceNumber = 0
repeat {
    tries += 1
    diceNumber = Int(arc4random_uniform(6)+1)
} while diceNumber != 6
print("You got a 6 in \(tries) tries")
