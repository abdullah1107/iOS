import UIKit

var myIntArray = [Int]() // Integer Empty Array
var myStringArray = [String]()  // String Empty Array


// Initialize the Array
var elementsArray = ["Apple","Mango","Banana"]

// Iterate through the array

for element in elementsArray {
    print(element)
}


//Get element and Index from Array for-in loop :

// Initialize the Array
var elementsIndexArray = ["Apple","Mango","Banana"]

// Iterate through the array
// keeping track of the elements' index

for (index,element) in elementsIndexArray.enumerated() {
    print("\(index) = \(element)")
}




