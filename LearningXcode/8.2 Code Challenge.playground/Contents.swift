import UIKit

// Sorting Algorithms - Bubble Sort

// Create a function that takes in an array of Ints.

// You are to sort this array without using the built in .sort() method.

// Implement a bubble sort. A visual example of what a bubble sort is is shown here: https://en.wikipedia.org/wiki/Bubble_sort#/media/File:Bubble-sort-example-300px.gif

// Return the sorted array

func bubbleSort(arrayOfInts: [Int]) -> [Int] {
    var myArray = arrayOfInts
    
    for _ in 0..<myArray.count {
        for j in 0..<myArray.count {
            if myArray.count > j + 1 {
                if myArray[j] > myArray[j+1] {
                    myArray.swapAt(j, j + 1)
                }
            }
        }
    }
    return myArray
}







//The Big O notation
//Don't make an algorithm that is x squared time
//find an algorithm that takes log(x) time
