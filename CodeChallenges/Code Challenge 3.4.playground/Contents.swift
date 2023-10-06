import UIKit

// Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.


    func oneOrZero(digitString: String) -> String {
        var result = ""
        
        for number in digitString {
            if let digit = Int(String(number)) {
                if digit >= 5 {
                    result += "1"
                } else {
                    result += "0"
                }
            }
        }
        
        return result
    }



    let stringOfDigits = "658391"
    let newStringOfDigits = oneOrZero(digitString: stringOfDigits)
    print(newStringOfDigits)
