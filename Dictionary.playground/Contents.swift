import UIKit

//initialize the Dictonary
let dict1 = [String:String]()


//initialize the Dictonary

let dict2 : [String:String] = [:]


//create default dictonary
let myDefaultDict:[String:String] = ["name" : "Abdullah" , "surname" : "Mamun"]
//print(myDefaultDict["name"]!)


//get all key from dictonary
let myAllKeys : [String : String] = ["name" : "Abdullah" , "surname" : "Mamun"]

//get array  of keys
let allKeys = Array(myAllKeys.keys)
print(allKeys)
//print(allKeys[0])


//Get all values from Dictonary
let myValue : [String : String] = ["name" : "Abdullah" , "surname" : "Mamun"]

// Get array of Values
let allValues = Array(myValue.values)
print(allValues)



//Adding items to the dictonary
var myDictionary : [String : String] = ["name" : "Abdullah" , "surname" : "Mamun"]

//adding new item with key  and value

myDictionary["lastName"] = "shiblu"
print(myDictionary)



//Check two dictonary are equal
let dictFirst = ["name" : "mamun"]
let dictSecond = ["name" : "Abdullah"]

// Checking two dictionary equality.

if dictFirst == dictSecond{
    print("Same")
}else{
    print("Not Same")
}


//check the object
let mydictObject = ["firstName" : "Abdullah"]

if mydictObject is Dictionary <String, String>{
   // print("This is dictionary object.")
    print(mydictObject)
}


//Size of the dictonary item
var size_of_dictonary = ["name" : "Abdullah" , "surname" : "Mamun"]

let size = size_of_dictonary.count
print(size)




// Initialize the Dictionary
var dictLoop  = ["name" : "Abdullah" , "surname" : "Mamun"]

//key and value inside loop.

for (key,value) in dictLoop {
    print(key)
    print(value)
}


//Remove item dictonary with Key

var rmb_dict = ["name" : "Abdullah" , "surname" : "Mamun"]


rmb_dict.removeValue(forKey: "name")

print(rmb_dict)



//Set Dictonary Element for key

var setDictonary = ["name" : "Abdullah" , "surname" : "Mamun"]

setDictonary["surname"] = "Maruf"

print(setDictonary)
