import UIKit

  //String
var str: String = "Hello, playground"

print(str)

print("Hello world  ")

//Constant
let constant = "This can't be changed"

    //Boolean
var  b = false
print(b)
    
    //Integer
var i = 9
i = -10
i = 0

    //Float
var f = 0.345
print(f)

    //Double
var d: Double = 0.454
    
    //Typealias
typealias Feet = Int
var distance: Feet = 100
print(distance)

    //Function
//default return value of function is void
func sayhello(){
    print("Say Hello")
}

//Function with paremeters
func sayHelloTo(name: String,_ age: Int){
    print("hello \(name). you are \(age) years old")
}
sayHelloTo(name: "Tom", 20)

//Function with return value
func addFourTo(_ num: Int)-> Int{
    return num + 4
}

var sum =  addFourTo(5)
print(sum)

    //Optional types

var perhapsInt : Int?
var perhapsString : String?

//initializing nil
var myString1 : String?

if myString1 !=  nil {
    print(myString1!)
}else{
    print("Null")
}


// Optional values

//if let constantName = someOptional {
//   statements
//}

var myString:String?
myString = "Hello, Swift 4!"

if let yourString = myString {
   print("Your string has - \(yourString)")
} else {
   print("Your string does not have a value")
}

    //Tuples

//var error400 = (400, "Host not found")
var error400 = (errorCode: 400,   description: "Host not found")
print("\(error400.errorCode) \(error400.description)")

//access by index
print(error400.0)
