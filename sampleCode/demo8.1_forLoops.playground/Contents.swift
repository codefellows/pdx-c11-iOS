import UIKit

// We can use a "for-in" loop to iterate over a collection of items,
// such as items in an array:
let nameList = ["Arlene", "Brian", "Cindy", "Deathstar"]

for name in nameList {
    println("Hi, \(name)!")
}

// We can even access each character in a String:
let sentence: String = "Hi, Edmund."

for char in sentence {
    println(char)
}
