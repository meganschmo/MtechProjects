import UIKit

//write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'
// the string should start with a 1
// a string with size 6 should return: '101010'
//with size 5 should return: '10101
//with size 12 should return: '101010101010'
//the size wil always be positive and will only use whole numbers.


func differentSizes(digitString: String) -> String {
    var result = ""
    
    for numbers in digitString.enumerated() {
        if Int(numbers) % 2 == 0{
            result.append("0")
        } else {
            result.append("1")
        }
    }
    
    return result
}
var stringOfDigits = "6"
var newStringOfDigits = differentSizes(digitString: stringOfDigits)
print(newStringOfDigits.stringOfDigits)

