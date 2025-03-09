import UIKit

// Enumerations (enums) are custom data types that define a finite set of related values.
// Syntax: enum Name {
//    case value1
//    case value2
// }

// Basic enum definition
enum Compass {
   case north
   case east
   case west
   case south
}

// Creating enum variables - two equivalent ways
var direction = Compass.north

var direction2: Compass = .south
print("My direction is \(direction2)")

// Using enums with switch statements

// Swift requires switch statements on enums to be exhaustive (cover all cases),
// eliminating the need for a default case
switch direction {
case .north:
   print("North")
case .east:
   print("East")
case .west:
   print("West")
case .south:
   print("South")
}


// Enums with raw values and explicit type declarations

/// Enum that defines the possible seat positions in an airplane
enum SeatPosition: String {
   case aisle = "Aisle"
   case middle = "Middle"
   case window = "Window"
}

var passengerSeat = SeatPosition.window

print(passengerSeat)
print("Passenger seat is \(passengerSeat.rawValue)")


// Integer-based enum with raw values
// Swift automatically assigns sequential values when not explicitly provided
enum Month: Int {
   case january = 1, february, march, april, may, june, july, august, september, october, november, december
}

var currentMonth: Month = .june
print("Current month is \(currentMonth.rawValue)")


// Enums with associated values (payload)
enum Measure {
   case weight(Double)
   case age(Int)
   case size(width: Double, height: Double)
}

let ageMeasure: Measure = .age(33)
let weightMeasure: Measure = .weight(82.3)
let sizeMeasure: Measure = .size(width: 0.6, height: 1.71)

switch sizeMeasure {
case .weight(let weight):
   print("Weight: \(weight)")
case .age(let age):
   print("Age: \(age)")
case .size(width: let width, height: let height):
   print("Width: \(width), Height: \(height)")
}
