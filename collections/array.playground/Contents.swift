import UIKit

// Array is an ordered collection of elements of the same type.

// Creating an empty string array
var emptyArray: [String] = []

// Creating and appending on creation
var shoppingList: [String] = ["Game", "Playstation", "Book"]

// Using type inference
var inferredShoppingLit = ["Game", "Playstation", "Book"]

// Checking if an array is empty
if shoppingList.isEmpty {
    print("Our shopping list is empty!")
} else {
    print("We have items to buy!: \(shoppingList)") // We have items to buy!: ["Game", "Playstation", "Book"]

}

// Total number of elements of an array
print("Our shopping list has \(shoppingList.count) items!") // Our shopping list has 3 items!

// Properties isEmpty and count is part of every Swift collection. In Swift, Strings are also a collection of characters.

var string = "Vini"
print("The word contains \(string.count) characters") // The word contains 4 characters
print("The word is empty: \(string.isEmpty)") // The word is empty: false

// Get an element of an array using subscript. We can also modify the array element this way.

print("The first element of our shopping list is: \(shoppingList[0])") // The first element of our shopping list is: Game

shoppingList[0] = "Nintendo Switch"

print("Now, the first element of our shopping list is: \(shoppingList[0])") // Now, the first element of our shopping list is: Nintendo Switch


// Appending new elements
// We can use append, + operator or insert

var nameList = ["Jaime", "Jéssica", "João"]
print("Our nameList array is \(nameList) and contains \(nameList.count) elements") // Our nameList array is ["Jaime", "Jéssica", "João"] and contains 3 elements

// Appending into an array with append method
nameList.append("Jonas")
nameList.append("Jaimundo")

print("Now, our nameList array is \(nameList) and contains \(nameList.count) elements") // Now, our nameList array is ["Jaime", "Jéssica", "João", "Jonas", "Jaimundo"] and contains 5 elements

// Adding two arrays with + operator

var secondNameList = ["Joana", "Joaquim"]
var finalNameList = nameList + secondNameList

print("Our final nameList array is \(finalNameList) and contains \(finalNameList.count) elements") // Our final nameList array is ["Jaime", "Jéssica", "João", "Jonas", "Jaimundo", "Joana", "Joaquim"] and contains 7 elements

// Adding into specific index with insert method

finalNameList.insert("Jaques", at: 0)

print("Our final nameList array is \(finalNameList) and contains \(finalNameList.count) elements") // Our final nameList array is ["Jaques", "Jaime", "Jéssica", "João", "Jonas", "Jaimundo", "Joana", "Joaquim"] and contains 8 elements


// Removing elements

// Removing an specific element based on index and getting it

let jaques = finalNameList.remove(at: 0)
print("We removed \(jaques) from our finalNameList array. Now, it is \(finalNameList) and contains \(finalNameList.count) elements") // We removed Jaques from our finalNameList array. Now, it is ["Jaime", "Jéssica", "João", "Jonas", "Jaimundo", "Joana", "Joaquim"] and contains 7 elements

// Removing first and last elements of our array

let firstElementRemoved = finalNameList.removeFirst()
print("We removed the first element \(firstElementRemoved) from our finalNameList array. Now, it is \(finalNameList) and contains \(finalNameList.count) elements") // We removed the first element Jaime from our finalNameList array. Now, it is ["Jéssica", "João", "Jonas", "Jaimundo", "Joana", "Joaquim"] and contains 6 elements

let lastElementRemoved = finalNameList.removeLast()
print("We removed the last element \(lastElementRemoved) from our finalNameList array. Now, it is \(finalNameList) and contains \(finalNameList.count) elements") // We removed the last element Joaquim from our finalNameList array. Now, it is ["Jéssica", "João", "Jonas", "Jaimundo", "Joana"] and contains 5 elements

// Removing the two first elements

finalNameList.removeFirst(2)
print("We removed the first 2 elements from our finalNameList array. Now, it is \(finalNameList) and contains \(finalNameList.count) elements") // We removed the first 2 elements from our finalNameList array. Now, it is ["Jonas", "Jaimundo", "Joana"] and contains 3 elements


// Contains

print("Jonas is still in our list? \(finalNameList.contains("Jonas"))")


// Getting the index of an element
// As the element could not exist, it will be a Int? element, or in other words, an optional element. By this way, we must unwrap it. Let's use Optional Binding for it.

if let jonasIndex = finalNameList.index(of: "Jonas") {
    print("The index of Jonas is \(jonasIndex)") // The index of Jonas is 0
}
