import UIKit

struct Person {
    var name: String
    var age: Int
    var height: Double
    var weight: Double
    
    func greeting() {
        print("Hello, my name is \(name), and I am \(age) years old.")
    }
    mutating func birthday() {
        self.age += 1
    }
    mutating func growUp() {
        self.height += 0.1
    }
}

var kim = Person(name: "Kim", age: 35, height: 62.8, weight: 175.5)
kim.birthday()
print(kim)
kim.growUp()
print(kim)
kim.greeting()
