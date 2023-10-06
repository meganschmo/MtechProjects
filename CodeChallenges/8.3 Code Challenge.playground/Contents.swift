import UIKit

//Sorting Algorithms - Insertion SortOrder
// Same as yesterday, you are not allowed to us the .sort() method
//Create a function that takes in an array of Ints. Sort the array using an insertion sort
//A visualization of what an insertion sort is can be seen her: https://en.wikipedia.org/wiki/Insertion_sort#/media/
//File:Insertion-sort-example-300px.gif

//func insertSort(arrayOfInts: [Int]) {
//    var myArray = arrayOfInts
//    for num in 0..<myArray.count {
//        for j in 0..<myArray.count {
//            if j > 0 && myArray[j-1] > myArray[j] {
//                myArray.swapAt(j) && myArray.swapAt(j - 1)
//            }
//        }
//    }
//}

func insterionSort(nums: [Int]) -> [Int] {
    var myNums = nums
    var sortedArr: [Int] = []
    sortedArr.append(myNums[0])
    myNums.remove(at: 0)
    
    for num1 in myNums {
        for(j, num2) in sortedArr.enumerated() {
            if (num2 > num1) {
                sortedArr.insert(num1, at: j)
                break
            } else if (j + 1 == sortedArr.count) {
                sortedArr.append(num1)
            }
        }
    }
    return sortedArr
}
[1, 2, 3, 4, 5, 6, 7, 8]
