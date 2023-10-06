import UIKit

// Write a method, that will get an integer array as parameter and will process every number from this array.
// Return a new array with processing every number of the input-array like this:
// If the number has an integer square root, take this, otherwise square the number.
// Example
// [4,3,9,7,2,1] -> [2,9,3,49,4,1]
// Notes
// The input array will always contain only positive numbers, and will never be empty or null.


func arrayEquation(arrayOfIntegers: [Int]) -> [Int] {
    var result: [Int] = []
    for number in arrayOfIntegers {
        if let intSqrt = Int(exactly: sqrt(Double(number))) {
            result.append(intSqrt)
        } else {
            result.append(number * number)
        }
    }
    return result
}


let inputArray = [4, 3, 9, 7, 2, 1]
let outputArray = arrayEquation(arrayOfIntegers: inputArray)
print(outputArray)
