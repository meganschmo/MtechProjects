import UIKit


//if numberInArray.enumerated() % 2 == 0
//    print("\(numberInArray) Even")
//else
//    print("num: Odd")

func EvenOrOdd(numbersInArray: [Int]) {
    

    for index in numbersInArray {
        if index % 2 == 0 {
            print("\(index): Even")
        } else {
            print("\(index): Odd")
        }
    }
}
EvenOrOdd(numbersInArray: [1,2,3,4,5,6,7,8,9,10])


