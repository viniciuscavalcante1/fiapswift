import UIKit

// Non duplicate collection. We must explicitly define the type by default.
// Set<Type> = []

// String set
var movies: Set<String> = ["Inception", "The Dark Knight", "Inception"]

print(movies) // ["The Dark Knight", "Inception"]

// Empty set
var emptySet = Set<Int>()

// Inserting elements
movies.insert("Mad Max: Fury Road")

print(movies) // ["The Dark Knight", "Inception", "Mad Max: Fury Road"]
print(movies.count) // 3

// We cannot insert duplicated elements
movies.insert("Inception")
print(movies) // ["The Dark Knight", "Inception", "Mad Max: Fury Road"]
print(movies.count) // 3

// See if some element were already been inserted
let result = movies.insert("Inception")
print(result.inserted) // false

// Removing elements
movies.remove("Inception")
print(movies) // ["The Dark Knight", "Mad Max: Fury Road"]

// Percurring a set, very similar to python
for movie in movies {
    print(movie)
}

// contains
if movies.contains("The Dark Knight") {
    print("Yes") // Yes
}

print(movies) // ["The Dark Knight", "Mad Max: Fury Road"]


var myOldMovies: Set<String> = ["Inception", "Blade Runner 2049", "Fight Club", "Avengers: Endgame", "The Dark Knight"]

// Intersection

let favouriteMovies = movies.intersection(myOldMovies)
print(favouriteMovies) // ["The Dark Knight"]

// Union

let allMovies = movies.union(myOldMovies)
print(allMovies) // ["Fight Club", "The Dark Knight", "Mad Max: Fury Road", "Inception", "Blade Runner 2049", "Avengers: Endgame"]

// Removing one set of another by subtracting

movies = movies.subtracting(myOldMovies)
print(movies) // ["Mad Max: Fury Road"]
