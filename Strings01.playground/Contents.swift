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


