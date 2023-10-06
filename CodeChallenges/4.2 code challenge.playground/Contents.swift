import UIKit

//Your task is to find the first element of an array that is not consecutive.
//by not consecutive we mean not exactly 1 larger than the previous element of the array.
//E.g. If we have an array[ 1, 2, 3, 4, 5, 6, 7, 8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the firs not-consecutive number.
//If the whole array is consecutive then return nil
//The array will always have at least 2 elements and all elements will be numbers. The numbers will also al be unique and in ascending order. The numbers could be positive or negative and firs non-consecutive could be either too!

func nonConsecutiveNumbers(numbersArray: [Int]) -> Int? {
    for number in 1..<numbersArray.count {
        if numbersArray[number] - numbersArray[number - 1] != 1 {
            return numbersArray[number]
        }
    }
    return nil
}
var findNumber = nonConsecutiveNumbers(numbersArray: [1, 2, 4, 5, 6, 7, 8])
print(findNumber!)


//another way

//func nonConsecutiveNumbers(in array: [Int]) -> Int? {
//    var nonConsecutive: array.first
//
//    for number in array.dropFirst() {
//        guard number == nonConsecutive + 1 else {
//            return number
//        }
//        nonConsecutive += 1
//        }
//    return nil
//}
//var findNumber = nonConsecutiveNumbers(in: [1, 2, 4, 5, 6, 7, 8])
//print(findNumber)
