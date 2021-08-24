import UIKit

//Declaration of variable
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)
//Samsung

let pi = 3.14
print(pi)
//3.14

//Explicit Declaration of Variable
var age : Int = 23
age = age * 2
print(age)
//46

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")
//This is Superb!
//aweMessage

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)
//iOS Java
//iOS - Java

print(10,20,30)
print(12.5,15.5)
//10 20 30
//12.5 15.5

//print() prints any number of comma-separated items
print("Hii",10,12.25)


//print statement using String Interpolation

var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)")

var Age = 23
print("You are \(Age) years old and in another \(Age) years, you will be \(Age * 2)")


print("""
Hello
World!
""")

print ("Hello All,\rWelcome to Swift programming")


let  welcomeMessage : String = "Hello!"
print(welcomeMessage , "All")


//Usually a print statement is terminated by a new line
//To separate the print statements other than new line
//we can use it as follows

print("Welcome to Swift Programming")
print("Fall 2021")
print("*************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")


//In general, the items in a print statement are separated by spaces, to print the items separated by something other than spaces, we use separator

print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")


//Tuples
var httpError  = (errorCode : 404  , errorMessage : "PageNotFound")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )


var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
