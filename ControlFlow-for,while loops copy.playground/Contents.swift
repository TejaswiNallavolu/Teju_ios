import UIKit

//strings01
//1
var number:Int = 5
for index in 1...5{
    print("\(index) * \(number) = \(index*number)")
}

//ex
var numb:Int = 2
for index in 10...20{
    print("\(index) / \(numb) = \(index/numb)")
}

//2
var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum+=number
}
print("The sum of first \(totalNumbers) is \(sum)")

//ex
var total=50
var add:Int = 0
for num in 1...total {
    add+=num
}
print("The sum of first \(total) is \(add)")

//3
var coreLang = ["Java","Swift","Javascript","ASP.net","SQL"]
//In swift Array is declared using var arrayName=[]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

//4
var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)",terminator:",")
    }
}
print(" are all even numbers")

//5
var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}

//While – Loop and Repeat-while loop:
//1
var prodNumber:Int = 6
var product:Int = 1
print("The product of first \(prodNumber) numbers is",terminator:" ")

while prodNumber>0 {
    product*=prodNumber
    prodNumber-=1
}
print(product)

//2
var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue%3 == 0 {
        print("\(rangeValue)",terminator:" ")
    }
    rangeValue-=1
}

//3
var Number = 1
repeat {
    print(Number,terminator:" ")
    Number += 1
} while Number <= 10

//4
var numBer = 3
repeat {
    print("Hello World!!")
    numBer+=1
} while (numBer <= 2)

//5
var a=0
var b=10

while (b-2 > 0){
    b-=2
    while (a+2 < 10){
        a+=2
        if a==b {
            continue
        }
        print("(\(a),\(b) )",terminator:"")
    }
}

//6
var d = 100;
while( d > 50 )
{
    d = d - 30
}
print(d)
if( d > 70 ){
    d-=20;
    
}
else{
    d+=35;
}
print(d);

