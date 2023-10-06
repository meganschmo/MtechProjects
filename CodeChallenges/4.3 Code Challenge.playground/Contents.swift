import UIKit

// In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.

//For example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.

var aList: [Int] = [ 2, 2, 3]
var bList: [Int] = [ 5, 4, 1]

func volumeOfCuboid(arr: [Int]) -> Int {
    var volume = true
    var result = 0
    for digit in arr {
        if digit <= 0 {
            volume = false
        }
    }
    if volume {
        result = arr[0] * arr[1] * arr[2]
    }
    return result
    
}

let volumeOfAList = volumeOfCuboid(arr: aList)
let volumeOfBList = volumeOfCuboid(arr: bList)

//print("\(abs(volumeOfAList-volumeOfBList))")

if (volumeOfAList > volumeOfBList) {
    print("\(volumeOfAList - volumeOfBList)")
} else {
    print("\(volumeOfBList - volumeOfAList)")
}
