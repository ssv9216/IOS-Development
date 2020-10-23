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

var stringName = ""
var Ae: Character = "A"
var Be: Character = "B"

stringName.append(Ae)
stringName.append(Be)
print(stringName)
    
    //Arrays

var someInts = [1, 4, 5, 6]
print(someInts)

var someStrings = ["Fruites", "Veges", "Meat"]
print(someStrings)

//Accessing values from array

for s in someStrings{
    print("I eart \(s)")
}

//Check odd or even numbers

for i in someInts{
    if i % 2 == 0{
        print("It's even \(i)")
    }else{
        print("It's odd \(i)")
    }
}

//First and last element of array

if let firstElement = someInts.first, let lastElement = someInts.last{
    print(firstElement, lastElement, separator: ",")
}

//Accessing elements by number

print(someInts[0])

//indexes of array  // indices  ** News **
print(someInts.count)
for i in someInts.indices{
    print(i)
}


// Adding and removing element from array

print(someInts)
someInts.append(7)  //adding last element
print(someInts)
someInts.remove(at: 2)
someInts.removeLast() //removing last element
print(someInts)

//adding multiple values
someInts.append(contentsOf: [8, 9] )
print(someInts)

//Edit the value
someInts[1] = 3
print(someInts)

//Modifying copies of array. copy array

var numbers = [1, 2, 4, 5]
var numberCopy = numbers
print(numberCopy)

    //Bridging between Array and NSarray
//TODO()

//create empty array
//init()
var emptyArray = Array<Int>()
print(emptyArray.isEmpty)

//capacity
print(numbers.capacity)

//description
print(numbers.debugDescription  )

//Count or size of
print(numbers.count )
//Note : CollectionOfOne used to represent sigle element as a collection

//repeating element
var arrayOfOne = Array(repeating: 1, count: 9)
print(arrayOfOne)

//Accesing Elements ..subscript

var cities = ["Ahmedabad", "Vadodara", "Mumbai", "Pune"]
print(cities[1 ..< cities.endIndex])

var citiesSlices = cities[2...]
print(citiesSlices)

//firstIndexOf
var mumbaiIndex = cities.firstIndex(of: "Mumbai")
print(cities[mumbaiIndex!])

//Get RANDOM element from array  ** NEW **
var dice = [1, 2, 3, 4, 5, 6]
print(dice.randomElement()!)

//Null Safety   ** Imp ***
var int: Int?

// Guard for check  // New
func check(_ st: String){
    guard st == "ok" else
    {
        
        print("in guard")
        return
    }
    print("after guard")
}

check("okk")

////Type Casting                  ** IMP **
//var dd: Double = Double(int)
//var ss: String = String(int)
//var nn = Int(ss)
//rint(nn!)

//print(int!!)

//var randomNumber = dice.randomElement(using: &myGenerator)!

var randomNumbers = [0...100]
print(randomNumbers.shuffle())

        //Sets

var someSets = Set<Character>()
print(someSets.isEmpty)
someSets.insert("A")
print(someSets)
print(someSets)
print(someSets.contains("A"))
someSets.remove("A")
someSets.insert("C")
someSets.insert("B")
someSets.sorted()
print(someSets)
    
//Sets Operation    //Union //Intersaction //Substraction

let evens: Set = [2,4,6,8]
let odds: Set = [1, 3, 5, 7]
let prime = [2, 3, 5, 7]
//var newOne = odds.union(evens).sorted()
//print(newOne)

var newOne = odds.intersection(prime).sorted() //[3, 5, 7]
odds.union(prime) // [1, 2, 3, 5, 7 ]
evens.subtracting(prime) //[1]
print(newOne)

let ingredients: Set = ["CoCo beans", "Cocoa butter", "salt"]
if ingredients.contains("salt"){
    print("It's salty")
}
    
    //Dictionaries

var responseMessage = [
        401: "Access Forbidden",
        200: "OK",
        400: "File not found"
]
var emptyDict : [String: String] = [:] //Empty dictionary
print(responseMessage.capacity)
print(responseMessage[200]!)

//edit
responseMessage[200] = "Welcome"
print(responseMessage)

var interestingNumbers: Dictionary = [
    "Primes": [2, 3, 5, 7],
    "Odds" : [1, 3, 5, 7],
    "even" : [2, 4, 6, 8]
]

var city = [
    "Ahmedabad",
    "Mumbai",
    "Vadodara"
]

//Sequence based initializing
var Distance = [20, 80, 360]
var cityDistandDic = Dictionary(uniqueKeysWithValues: zip(city,Distance))  //Zip(firstArray, SecondArray) = Dictionary
print(cityDistandDic)

//Filtering

var closeCities = cityDistandDic.filter{ $0.value < 100}
print(closeCities)

    
/// Dictionary Grouping

cities = ["Delhi","Dehradun","Hydrabad","Bihar","Bombay"]
var GroupedCities = Dictionary(grouping: cities){ $0.first! }
print(GroupedCities)

/// Accesing Dictionary

print("Value at number 1 is \(cities[1])")

///Modifying Dictionary

var Dict = [0: "Bihar", 1:"Gujarat", 2:"UP"]

if let oldValue = Dict.updateValue("Bombay", forKey: 0 ) {
    print("The old value of \(oldValue) was replaced with a new one.")
}
Dict.updateValue("Bombay", forKey: 0)
print(Dict)

///Remove key-value
//1
var removeValue = Dict.removeValue(forKey: 0)
//2
Dict[0] = nil
print(Dict)

///Iterating over Dictionary                            enumerated()

for (index, keyValue) in Dict.enumerated(){
    print("key and value respectively are \(index) : \(keyValue)")
}

///Convert To Arrays

print(Dict)
var dictKey = Dict.keys
var dictValues = Dict.values

print(dictKey) //only keys
print(dictValues) //only values


///Count

print("size of Dict is \(Dict.count)")

////Empty

print("Checks if it's empty or not \(Dict.isEmpty)")

    ///Function

func functionName(_ a: Int) -> Int{
    
    return a + 3
}

print(functionName(3))

///Function with option return value        //* New

func giveIfyouHave(array: [Int]) -> (a: Int?, b: Int?){
    
    let newArray = array.sorted()
    let max = newArray.last
    let min = newArray.first
    return (min, max)
}

print(giveIfyouHave(array: [3,4,5,5,5]))

///External parameter name

func pow1(firstArgs a: Int,SecondArgs b: Int) -> Int{
    var res = a
    for _ in 1 ..< b{
        res *= a
    }
    return res
}

print(pow1(firstArgs: 2,SecondArgs:  3))


///Variadic Parameters             //** NEW

func functioname<N> (parameterName: N...){
    //Body
}

func vari<N> (members: N...){
    for i in members{
        print(i)
    }
}

vari(members: "A","B","C")


///Constant, Variable and I/o Parameter

func swapValues(_ a: inout Int, _ b: inout Int){    //inout
    let temp = a
    a = b
    b = temp
}

var n1 = 10
var n2 = 20

swapValues(&n1, &n2)        //Note: use & before parameter passing

print("After swapig items \(n1) and \(n2)")

///Using Function types                     NOTE:  ** NEW **

func sum(a: Int, b: Int) -> Int{
    return a + b
}

var addition: (Int,Int) -> Int = sum
print(addition(2,3))

///Nested Function

func operate ( with symbol: String) -> (Int, Int) ->Int{    //👀
    
    func add(num1: Int, num2: Int) -> Int{
        return num1 + num2
    }
    
    func subtract(num1: Int, num2: Int) -> Int{
        return num1 - num2
    }
    
    let operation = (symbol == "+") ? add : subtract
    
    return operation
    
}

let operation = operate(with: "+")
let result = operation(2,3)
print(result)


    ///Function Rescursion  Calling self
//Ex1
func countToZero(_ a: Int){
    print(a)
    if a > 0 {
        countToZero(a - 1)
    }
}

countToZero(3)

//Ex2
func findFactorial(of n: Int) -> Int{
    if n == 1{
        return 1
    }else{
        return n * findFactorial(of: n - 1)
    }
    
}

print(findFactorial(of: 4))

    ///Closure

//SYNTAX

//{
//    (parameter) -> return type in Statement
//}

var studName = {print("Welcome to Closure")}
studName()

print(result)

//addition using closure
var add : (Int, Int) -> Int = {
    (val1, val2) in
    return val1 + val2
    }


print(add(1,2))

        ///Enumeration

enum climate{
    case India
    case America
    case Africa
}

var season = climate.India
//season = .India

switch season {
case .India:
    print("Welcome to india")
default:
    print("Hmm..")
}

///Difference between Associated and raw value


enum Student{
    case Name(String)                  //👀 case
    case Marks(Int, Int, Int)
}

var studentDetail = Student.Name("Swift")
var studentMarks = Student.Marks(20,30,40)

switch studentMarks {
    case .Name(let studentName):
        print("Student name is \(studentName)")
    case .Marks (let m1, let m2, let m3):
        print("Student get \(m1), \(m2), \(m3)")    //👀 put : after case
}

enum Month : Int {
    case January = 1, February , March, April       //👀 if first case = 1 then sequencialy other cases get values
}

var yearMonth = Month.April.rawValue

print(yearMonth)


        ///Structures

struct StudentMarks{
    var mark1 = 100
    var mark2 = 90
    var mark3 = 40
}

let marks = StudentMarks()  //👀 don't forget invocation



