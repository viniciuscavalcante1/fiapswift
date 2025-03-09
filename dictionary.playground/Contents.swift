import UIKit

// Dictionary is a collection of non ordered elements of the same type. It's not possible to use subscript then.
// For access the elements, we have to vinculate them to a key.

// Firstly, se have to define the type of the key and then the type of the elements using brackets.

// String elemetns dict
var states: [String: String] = ["PA": "Pará", "SP": "São Paulo"]

// Empty dict, we have to still type the [:], which is the dictionary expression
var emptyStates: [String: String] = [:]

// isEmpty

if states.isEmpty {
    print("Empty")
}

// Getting the value of a key

// Just like python
let pa = states["PA"]
print(pa!) // it is an optional because there is a chance this element don't exist

// A dictionary always returns an optional, so we always have to unwrap it

if let sp = states["SP"] {
    print(sp)
}

// Inseting new elements

states["MS"] = "Mato Grosso do Sul"

if states["MS"] != nil {
    print("Inserted")
}

// Removing elements

states["MS"] = nil
states.removeValue(forKey: "PA")

print(states)
