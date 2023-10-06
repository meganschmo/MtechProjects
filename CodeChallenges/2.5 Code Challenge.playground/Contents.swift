import UIKit


//d=√((x2 – x1)² + (y2 – y1)²)
func calculateDistance( x2: Double, x1: Double, y2: Double, y1: Double) -> Double {
    sqrt((pow((x2 - x1), 2.0)) + (pow((y2 - y1), 2.0)))
}
let distance = calculateDistance(x2: 3, x1: 2, y2: 5, y1: 4)
print(distance)
