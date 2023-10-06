import UIKit


//optinal chaining
struct Address {
    let number: Int
    let street: String
//    let apartmentNumber: Int?
    
}

struct Student {
    let firstName: String
    var middleName: String?
    let lastName: String
    var address: Address
    
    var fullName: String {
        
        if let middleName {
            return firstName + middleName + lastName
        } else {
            return firstName + " " + lastName
        }
    }
//    init?(firstName: String, lastName: String) {
//        guard !firstName.isEmpty
////                return nil
//    }
}
let megan = Student(firstName: "Megan", middleName: "Lin", lastName: "Schmoyer", address: Address(number: 97, street: "South"))
print(megan)


let text = "2 4"

let age = Int(text)

//if let age {
//    print(age)
//}
print(age ?? 100)
//optional no coalescing




