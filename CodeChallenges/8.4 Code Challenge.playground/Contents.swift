import UIKit

// Sorting Algorithms - Selection Sort

// Same as yesterday, you are not allowed to use the built in .sort() method.

// Create a function that takes in an array of Ints. Sort that array using a selection sort.

// See this for a visual example of a selection sort: https://en.wikipedia.org/wiki/Selection_sort#/media/File:Selection-Sort-Animation.gif

//optimized
func selectionSort(nums: [Int]) -> [Int] {
    var myNums = nums
    for i in 0..<myNums.count {
        var minIndex = i
        for j in i + 1..<myNums.count {
            guard myNums[j] < myNums[minIndex] else { continue }
            minIndex = j
        }
        if i != minIndex {
            (myNums[i], myNums[minIndex]) = (myNums[minIndex], myNums[i])
        }
    }
    return myNums
}
