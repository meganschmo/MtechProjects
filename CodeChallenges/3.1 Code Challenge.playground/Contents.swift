import UIKit

//Code challenge
// Create a function that takes in an array of Int's as a parameter
// You will need to multiply each Int in the array by 5.
// The function will return the array of new Ints.

func multiplyArrayByFive(arrayOfNumbers: [Int]) -> [Int] {
    return arrayOfNumbers.map { $0 * 5 }
}

let arrayToMultiply = [8, 6, 2, 4, 1]
let multipliedArray = multiplyArrayByFive(arrayOfNumbers: arrayToMultiply)
print(multipliedArray)
