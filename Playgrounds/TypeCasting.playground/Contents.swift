import UIKit

//Cast from one type into another type

//let pets = allClientAnimals()
//
//for pet in pets {
//    if let dog = pet as? Dog {
//        walk(dog: dog)
//    } else if let cat = pet as? Cat {
//        cleanLitterbox(cat: cat)
//    } else if let bird = pet as? Bird {
//        cleanCage(bird: bird)
//    }
//}

class Animal {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Monkey: Animal {
    func throwPoo() {
        print("Throw")
    }
}
class Dog: Animal {
    func walk() {
        print("bark")
    }
}
class Cat: Animal {
    func killEveryBugISee() {
        print("meow")
    }
}
let myMonkey = Monkey(name: "Harambe")
let myDog = Dog(name: "Scooby")
let myCat = Cat(name: "Garfield")

let myPets = [myMonkey, myDog, myCat]

print(myPets)


for pet in myPets {
    if let dog = pet as? Dog {
    } else if let pet = pet as? Monkey {
        pet.throwPoo()
    } else if let pet = pet as? Cat {
        pet.killEveryBugISee()
    }
}


let junkDrawer: [Any] = ["scissors", 6, true, "money", myCat]
for mysteryItem in junkDrawer {
    if let mysteryItem = mysteryItem as? Double {
        print("Double")
    }
    if let mysteryItem = mysteryItem as? Int {
        print("Int")
    }
    if let mysteryItem = mysteryItem as? Bool {
        print("Bool")
    }
    if let mysteryItem = mysteryItem as? String {
        print("String")
    }
    if let mysteryItem = mysteryItem as? Cat {
        print("Cat")
    }
}
// Any is used when you want to work with nonspecific types
//Any can represent an instance of any type: strings, doubles, functions, or whatever. AnyObject can represent an instance of any class in Swift but not a structure
//AnyObject references Class

//Scope is where code can be accessed such as constants and variables within a function.

func printBottleCount() {
    let bottleCount = 99
    print(bottleCount)
}
printBottleCount()
//print(bottleCount)
//can't find print(bottleCount) because it is inside the function

func printTenNames() {
    var name = "Grey"
    for index in 1...10 {
        print("\(index): \(name)")
    }
    print(index)
    print(name)
    // index is only available in the for loop
}

printTenNames()

func exclaim(name: String?) {
    guard let name = name else { return }
    print("Exclaim function was passed: \(name)")
}
//A guard statement is used for a function not for "for loops" or other operations. Used to avoid excess curly braces.


