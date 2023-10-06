import UIKit




func powersOfTwo(numbersInArray: [Int]) -> [Int] {
    var results = [Int]()
    for number in numbersInArray {
        let result = number * number
        results.append(result)
    }
    return results
}
print(powersOfTwo(numbersInArray: [ 1, 2, 3, 4, 5, 6, 7, 8]))
