import UIKit

//It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them.
//Easy! You just need to write a script. Return the average of the given array rounded down to its nearest integer.
//The array will never be empty

////func averageOfArray(array: [Int]) -> Int {
//guard ?isempty else {return 0}
//    return average = array.reduce(0, +) / count
//}
func average(array: [Int]) -> Int {
    guard !array.isEmpty else { return 0 }
    return array.reduce(0, +) / array.count
}

 
print(average(array: [4, 2, 7, 9, 11]))
