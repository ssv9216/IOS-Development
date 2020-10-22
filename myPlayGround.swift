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

//Note : Tuples are for temporary values not for complex data

print("Tab, newLine, SingleQuote, DoubleQuote  \t\n  \'is\' respectily \"coming\"")

        //OPERATORS

    //ARITHMETIC OPERATORS

//+, -, *, /, %

    //COMPARISON OPERATOR

//==, !=, <, >, >= , <=

    //Logical Operator

//&&, ||, !
        
    //Bitwise operator

//&, |, ^, ~, <<, >>

var A = 60
var B = 13

//XOR
print(A ^ B)
//p    q    p&q    p|q    p^q
//0    0    0    0         0
//0    1    0    1        1
//1    1    1    1        0
//1    0    0    1        1

    //ASSIGNMENT OPERATOR

//=, +=, -=, *=, /=, %=, <<=, >>=, &=, ^=, |=

    //RANGE OPERATOR

//(a..b)
//runs from a to b that runs including a and b
for i in (0...4){
    print(i)
}


//(a.. < b)
//runs from a not include b
for i in (0 ..< 4){
    print(i)
}

//a...
//run from until last element
let fruites = ["apple","banana","Mango"]
let smallParts = fruites[1...]

print(smallParts)

    //MISC OPERATOR

//Unary minus
var three = 3
var minusThree = -three
print("Unary minus operator \(minusThree)")

//Unary Plus

var seven = -6
var plusSeven =  -seven  // Note: +seven returns -6
print("Unary plus operator \(plusSeven)")

//Ternary operator

// Condition ? X : Y
var a = 6
a < 4 ? print(a) : print("Bigger than 4")

    //OPERATOR PRECEDENCE
//TODO()

    //CONDITION

if a > 4{
    print("Greater than 4")
}else{
    print("Less than 4")
}

    //if-else-if

var time = 12

if time > 0 && time < 12 {
    print("Good Morning")
}else if time >= 12 && time <= 16{
    print("Good Afternoon")
}else if time > 17 && time <= 24{
    print("Good night")
}

    //nested if-else
if time == 12{
    print("First Conditio  satisfied")
    
    if time > 11{
        print("Second satisfied")
    }
}

    //SWITCH STATEMENT

var index = 10

switch index {
case 10:
    print("Ten")
case 12:
    print("Twelve")
default:
    print("Null")
}
    
    //SWITCH FALLTHROUGH

switch index {
case 9:
    print("Nine")
case 10,13:
    print("ten or thirteen")
    fallthrough
case 1:
    print("One")
default:
    print("Null")
        
}


    //LOOPS

//For
for f in fruites{
    print(f)
}

//While
var counter = 10
while counter < 11 && counter > 0{
    print(counter)
    counter -= 1
}
    
//repeat while   // Contradicting to do..while
var j = 0

repeat{
        
    print("Index is \(j)")
    j += 1
}while j < 20

    //LOOP CONTROL STATEMENT

//Continue
    //-This statement tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop.

for i in (1...3){
    if i == 2{
        continue // two is skipped
    }
    print(i)
}

// Break Statement

index = 10
repeat{
    index = index + 1
    if (index == 15){
        break   //break if index == 15
    }
    print("index is \(index)")
}while index < 20


//fallthrough

// look up in Switch portion


    //STRING

//  3 WAY create String
//A
var stringA = "Hello A"
//B
var stringB = String("Hello B")
//C multiple line   String
var stringC = """
    Hello
    \tC
    """
print("Multiple Line \(stringC)")

//EMPTY STRING
//two ways
//A
var stringE = ""
if stringE.isEmpty { print("Empty") }else { print("Not empty")}

//B
var stringF = String()
if stringF.isEmpty { print("Empty") }else { print("Not empty")}

    
//STRING CONCATINATION

let A1 = "Hello,"
let B1 = "World!"
let C1 = A1 + B1
print(C1)

//STRING LENGTH
    //-- stringName.count

func getlength(_ string: String){
    print(string.count)
}
getlength("Hello")

//STRING COMPARISON

if A1 == B1{
    print("Equal")
}else{
    print("different")
}

//STRING ITERATING

for s in A1{
    print(s)
}

//UNICODE STRING

var unicodeString = "Cat??"

print("UTF-8 code")
for code in unicodeString.utf8{
    print("\(code)")
}

print("UTF-16 code")
for code in unicodeString.utf16{
    print("\(code)")
}

//FUNCTION/OPERATOR AND PUPOSE

var stringName = "ABA"
var s = "1"
print(stringName.isEmpty)
print(stringName.hasPrefix("A"))
print(stringName.hasSuffix("A"))
print(stringName.unicodeScalars)
//Append String
print(stringName += "C")
//Lexicography comparison of two strig
print(s < stringName)
//StartIdex
print(stringName.startIndex)
//End Index
print(stringName.endIndex)
//indices  ///New
print(stringName.indices)
//insert value at position
var numbers = [1, 2, 3, 4, 5]
numbers.insert(100, at: 3)
numbers.insert(200, at: numbers.endIndex)
print(numbers)
//remove
numbers.remove(at: 2)
print(numbers)

    //REVERSED // NEW

print(String(stringName.reversed()))
