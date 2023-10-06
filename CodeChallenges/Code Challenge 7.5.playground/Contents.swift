import UIKit

//Write function heron which calculates the area of a triangle with sides a, b and c(x, y, z in COBOL)

//Heron's formula

//sqrt 8 * (8 - a) * (8 - b) * (8 - c)
//where
// 8 = a+b+c / 2
//Output should have 2 digits precision

var greeting = "Hello, playground"
func areaOfTriangle(a: Double, b: Double, c: Double)  -> String {
    let area = sqrt(8 * (8 - a) * (8 - b) * (8 - c))
    let formattedArea = String(format: "%.2f", area)
    return formattedArea
}
var findArea = areaOfTriangle(a: 6, b: 4, c: 3)
