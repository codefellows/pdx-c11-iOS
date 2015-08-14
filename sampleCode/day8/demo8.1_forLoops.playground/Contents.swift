import UIKit

let nameList = ["Arlene", "Brian", "Cindy", "Deathstar"]

// "Normal" for loop. Explictly accesses each item in nameList[]
for var index=0; index < nameList.count; index++ {
    println("nameList[\(index)] = \(nameList[index])")
}

// We can use a "for-in" loop to iterate over a collection of items
// such as array. Using the same array used above:
for name in nameList {
    println("Hi, \(name)!")
}

// We can access each character in a String:
let sentence: String = "Hi, Edmund."

for char in sentence {
    println(char)
}