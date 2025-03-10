import UIKit

// Structs are value types in Swift that can have properties and methods, unlike classes which are reference types.
// Swift automatically generates initializers for structs based on their properties, so we don't need to explicitly create constructors
// unless we need custom initialization logic.

struct RGBColor {
    // Properties that represent RGB color components (values from 0-255)
    var red: Int
    var green: Int
    var blue: Int
    
    // Method to display the RGB values in a formatted way
    func printColor() {
        print("""
        Red: \(red)
        Green: \(green)
        Blue: \(blue)
        """)
    }
}

// Creating a new RGBColor instance with yellow color values (255, 255, 0)
var rgbYellow = RGBColor(red: 255, green: 255, blue: 0)

// Modifying a property after initialization
rgbYellow.red = 254
