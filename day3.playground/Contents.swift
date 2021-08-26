import UIKit

(4 > 5 && 8 > 3)
(5 > 7 || 8 < 2 * 5)
!(5 <= 4 || 6 != 5 && 10 >= 4)


var x : Int  = 12;
var y : Int  = 7;
var z : Int  = 5;
var a : Bool = true;
var b : Bool = false;
(x - z == y)
(x * z > z * y || b)
(x * z < z * y && a)
(x * z > z * y && a || b)
!(x * z > z * y && a || b)


var  firstNumber : Int = 10
var secondNumber : Int = 25
print(secondNumber / firstNumber)

var four = 4
var finalNumber = -four
print(finalNumber)

var number1 = (3,4)
var number2 = (4,5)
print(number1 <  number2 )



//ControlFlow-if-Else
//1
var marks=45
if marks > 50 {
    print("The student  had passed  with  \(marks) marks ")
}else{
    print("The student had managed to get \(marks) marks")
    }

//2
var inputNumber = -10
if inputNumber>0 {
    print("\(inputNumber) is a positive number.")
}else if (inputNumber<0){
    print("\(inputNumber) is a negative number")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
}else {
    print("The number  is 0")
}


//3
var stars = 65
if(stars>=90) {
    print("You are a Pro Member")
}
else if (stars>=78 && stars<90){
print("You are a Gold Member")
}
else if (stars>=65 && stars<78) {
    print("You are a VIP Member")
}
else {
    print("Default Plan")
}

//4
var password:String="stephen@171"
if(password.count>8){
    if(password.contains(" ")){
       print("Password Should not contain space")
    }
    else{
    print("Password is Strong")
    }
}
else
{
   print("A password should be minimum of 8 characters")
   }

//5
var male:Bool=false
var age = 45
if male {
    if age<20 {
        print("BOY")
    }else {
        print("MAN")
    }
}else{
    if age<20{
        print("Girl")
    }else{
        print("Woman")
    }
}

//Switch Statements:
//1
let alphabet:Character="a"
switch alphabet {
    case "a","A":
        print("It is alphabet a or A")
    case "b":
        print("It is lower alphabet b")
    case "C":
        print("It is upper case alphabet C")
    default:
        print("None of the cases are executed above")
}

//2
let isVowel:Character="e"

switch isVowel {
    case "a","e","i","o","u":
        print("The alphabet is a lower case vowel")
    case "A","E","I","O","U":
        print("The alphabet is an upper case vowel")
    default:
        print("The alphabet is a consonant")
}

//3
let isHot:Double = -10.0
switch isHot {
    case 60...95:
        print("It's really warm. Don't forget to wear sunscreen.")
    case 35...60:
        print("It's not that cold. Wear a t-shirt.")
    case ..<35:
        print("It's very cold. Consider wearing a scarf.")
    default:
        print("The temperature is Unbearable")
}

//4
var X:Int=3
var Y:Int=4
var Z:Int=5
switch x {
    case 5:
        print("\(Z)~",terminator:"")
    case 3:
        print("\(X)~",terminator:"")
        switch Y {
            case 3:
                print("\(X)~",terminator:"")
            case 4:
                print("\(Y)~",terminator:"")
                switch Z {
                    case 5:
                        print("\(Z)~",terminator:"")
                    case 4:
                        print("\(Y)~",terminator:"")
                    default:
                         print("No Matching case found")
                }
            default:
                print("No Matching Case  found")
        }
    default:
        print("No number is matching")
}



