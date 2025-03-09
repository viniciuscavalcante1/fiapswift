import UIKit

// The 'for' loop iterates through a sequence such as a range, collection, or any other iterable object.
// Syntax: for element in sequence { code to execute }


// Iterating through a numeric range
for i in 1...100 {
   print(i)
}

// Iterating through array elements
let students = ["Alice", "Bob", "Charlie"]

for student in students {
   print("Hello, \(student)!")
}

// Iterating through each character in a string
let name = "Swift"
for letter in name {
   print(letter)
}


// Iterating through dictionary entries
let people = [
   "Alice": 12,
   "Bob": 13,
   "Charlie": 14
]

// Accessing key-value pairs as tuples
for person in people {
   print("\(person.key) is \(person.value) years old.")
}

// Tuple decomposition for cleaner dictionary iteration
for (name, age) in people {
   print("\(name) is \(age) years old.")
}


// Using 'break' to exit a loop early
let grades = [88, 92, 85, 94, 89, 304, 4]
for grade in grades {
   print(grade)
   if grade < 0 || grade > 100 {
       print("Invalid grade!")
       break  // Immediately exits the loop when an invalid grade is found
   }
}
