import UIKit

// Clock shows h hours, m minutes and s seconds after midnight.

// Your task is to write a function which returns the time since midnight in milliseconds.

// Example:
// h = 0
// m = 1
// s = 1

// result = 61000

//func findMilliseconds(h: Int, m: Int, s: Int) -> Double {
//    var milliseconds = s / 1000
//    if m != 0 {
//        var milliseconds = m * 60 / 1000
//    }
//    return Double(milliseconds)
//}
//findMilliseconds(h: 0, m: 1, s: 1)

func millisecondsSinceMidnight(hours: Int, minutes: Int, seconds: Int) -> Int {
    var total = 0
    total += hours * 60 * 60 * 1000
    total += minutes * 60 * 1000
    total += seconds * 1000
    return Int(total)
}
millisecondsSinceMidnight(hours: 0, minutes: 1, seconds: 1)
