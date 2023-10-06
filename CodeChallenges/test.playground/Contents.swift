import Foundation

var greeting = "Hello, playground"
func areaOfTriangle(a: Double, b: Double, c: Double)  -> String {
    let area = sqrt(8 * (8 - a) * (8 - b) * (8 - c))
    let formattedArea = String(format: "%.2f", area)
    return formattedArea
}
var findArea = areaOfTriangle(a: 6, b: 4, c: 3)
