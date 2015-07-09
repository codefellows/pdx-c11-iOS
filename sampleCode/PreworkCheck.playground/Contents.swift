// Code Fellows iOS Foundations II course, Summer 2015, PDX Campus
// Supplementary material for basic coding concepts and Swift syntax
// by Al She
import UIKit

// Initialize an array and loop thru it, printing each element

var floatData: [Float] = [1, -2, 90210, -42.42, 3.14159, -0.01]

func printArray(x: [Float]) {
    for var idx=0; idx < x.count; idx++ {
      println("x = \(x[idx])")
    }
}

printArray(floatData)

/* Quiz 1: Write a function that accepts an array of Float as its input, and prints out every other array element. Call the function, sending it the "floatData" variable. Your function should print out either all positive or all negative values, depending on whether you skip the first element of the array. */

/* Quiz 2: Write a function that behaves as your function for Quiz 1, but includes an additional parameter "offset" that specifies the first element of the array to start printing. If offset is zero (0), the function should print 1, 90210, etc.  If offset is one (1), the function should print -2, -42.42, etc. */
