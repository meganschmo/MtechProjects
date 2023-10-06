import UIKit

// Introduction
// The first century spans from the year 1 up to and including the year 100, the second century - from the year 101 up to and including the year 200, etc.
// Task
// Given a year, return the century it is in.
// Examples
// 1705 --> 18
// 1900 --> 19
// 1601 --> 17
// 2000 --> 20

func centuryFinder() {
    
    switch 1...20 {
    case 1705...1900 :
        print(18)
    case 1900...2000:
        print(19)
    case 1601...1705:
        print(17)
    case 2000...2100:
        print(20)
    default:
        print(0)
    }
}




