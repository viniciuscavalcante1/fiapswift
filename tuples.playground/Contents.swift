import UIKit

// Tuples

let address = "Av. Paulista, 1106, 01311-000"

let addressTuple: (String, Int, String) = ("Av. Paulista", 1106, "01311-000")
print("Logradouro: \t\(addressTuple.0)\nNúmero: \t\(addressTuple.1)\nCep: \t\(addressTuple.2)")

let addressTuple2: (street: String, number: Int, zipCode: String) = ("Av. Paulista", 1106, "01311-000")
print("Logradouro: \t\(addressTuple2.street)\nNúmero: \t\(addressTuple2.number)\nCep: \t\(addressTuple2.zipCode)")

// Tuple decomposition

let (street, _, zipCode) = addressTuple2
print("Logradouro: \t\(street)\nCep: \t\(zipCode)")
