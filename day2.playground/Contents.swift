import UIKit

var a = 10
var b = 20
var sum = 0
sum = a+b
print(sum)

//string interpolation
print("the sum is equal to: \(sum)")

//terminator
print("the sum is ", terminator:"=")
print(sum)

//separator
print(1,2,3)
print(1,2,3, separator: "*")

var fName = "Teju"
var lName = "Nallavolu"
print(fName, lName)
print(fName, lName, separator: " ")
print(lName,fName, separator: ", ")

var str1 = "Bobby"
var str2 = "Bearcat"
var str3 = "-"
print(str1,"-",str2)
print(str1, str3, str2)

//constants(let) and variables (var)
var radius = 2.0
var Pi = 3.14
var perimeter = 2 * Pi * radius
print("The perimeter of circle is \(perimeter)")

var p = 9.0
let q = 2.0
p = p-q
//q = p+q illegal statement
print(p)

//Tuples
var httpError = (errorCode:404, errorMessage:"Page not found")
print(httpError)
print(httpError.errorCode)
print(httpError.errorMessage)

var name = ("Tejaswi","Nallavolu")
var fname = name.0
var lname = name.1
print(fname, lname)
