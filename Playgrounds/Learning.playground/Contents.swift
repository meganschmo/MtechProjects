import UIKit

var emptyArray: [Int] = []
var hundredSomthen: [Int] = [Int](repeating: 0, count: 100)

print(hundredSomthen.count)
print(hundredSomthen.isEmpty)
print(emptyArray.isEmpty)
var newArray: [String] = []

newArray = ["Kolina"]
newArray.append("Megan")
newArray += ["Robert", "Kim"]
newArray.insert("Jessica", at: 2)
var myName = newArray.remove(at: 1)
var anotherArray = ["Martin", "Parker", "Gavin", "Sylvia"]
var allArray = newArray + anotherArray
//This is a container Array
print(myName)
print(newArray)
print(newArray[3])
print(allArray)
//append add it on the end
//prepend add it on in beginning
//insert add within to specified spot

var mydict = [String:Int]()
mydict = [ "Robert": 100, "Megan": 200, "Kim": 300]
//most of the time the value is a string in a dictionary
print(mydict["Kim"] as Any)
print(mydict.keys)
print(mydict.values)
//use the key to find the position for you
let oldValue = mydict.updateValue(100, forKey: "Robert")
if let oldValue = mydict.updateValue(5000, forKey: "Robert") {
    print("Robert's old value was \(oldValue)")
}
print(mydict["Robert"] as Any)
//mydict["Robert"] = nil
if let removedValue = mydict.removeValue(forKey: "Megan") {
    print("Megan's score was \(removedValue) before she stopped playing")
}
print(mydict)

//array is ordered
//dictionary is not ordered
//dictionary uses hash function
//dictionary provides a search function
//with array there is no search function you would have to look through the list manually
//

//make array
var colors = ["Red", "Blue", "Orange", "Green", "Fuscia"]

//add something to start
colors.insert("Teal", at: 0)
//add something to start with concatenation
colors = ["Quince"] + colors

print(colors)
//add something to end
colors.append("Copper")
//add something to the Exact Middle
//even
colors.insert("Purple", at: colors.count / 2)

print(colors)
//add many things to array
colors += ["Yellow", "Sunset Orange"]

let location = colors.firstIndex(of: "Blue")
//print(location)
//look for thing in array
for (index, color) in colors.enumerated() {
    if color == "Blue" {
        print(index)
    }
}
print(colors)
//remove Green from array
var removeGreen = colors.remove(at: 6)
print(colors)

//make dictionary. name -> height in inches
var classRoster = ["Georgina": 62, "Pablo": 63]

//add new student
classRoster["Vicotoria the vampire"] = 73

print(classRoster)

classRoster.shuffled()
//does not work because there is no order
print(classRoster)

//get list of students
let students = classRoster.keys
print(students)

//get list of heights
let heights = classRoster.values
//make Pablo 8 inches taller

//add many things to dictionary
let otherDictionary = ["Jack": 72, "Jill": 60]

//get students and their heights and sort the students from shortest to tallest
//let sortedHeights = classRoster.values.sorted()
//
//var namesSorted ByHeight: [String] = []

