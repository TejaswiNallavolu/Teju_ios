import UIKit

var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")
// Prints "letters is of type Set<Character> with 0 items."
letters.insert("a")

print(letters)
// letters now contains 1 value of type Character
letters = []
print(letters)
// letters is now an empty set, but is still of type Set<Character>

//Worksheet of sets

var players : Set<String> = ["David Warner", "Virat Kohli", "Kane Williamson", "Steve Smith"]
print(players.count)
print(players)
print(players.contains("Steve Smith"))
players.insert("Maxwell")
print(players)
players.remove("David Warner")
print(players)

var primeNumbers : Set<Int> = [2,3,5,7,11]
var numbersList : Set<Int> = [1,2,5,9]
var unionSet : Set<Int> = primeNumbers.union(numbersList)
print(unionSet)

 var intersectionSet : Set<Int> = primeNumbers.intersection(numbersList)
print(intersectionSet)

 var subtractionSet : Set<Int> = primeNumbers.subtracting(numbersList)
print(subtractionSet)

 var symmDiffSet :Set<Int> = primeNumbers.symmetricDifference(numbersList)
print(symmDiffSet)

 print(primeNumbers.isSubset(of: numbersList))



// Fundamental Set Operations
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())


// Dictionaries01
var capitals = ["Arkansas":"LittleRock","Georgia":"Atlanta"]
print(capitals)

print(capitals.count)

var numbers = [1:"One",2:"two",3:"Three"]
print(numbers)
numbers[4] = "Four"
print(numbers)

var courses = [44542:"Java", 44560:"Database", 44613:"DataVisualization"]
print("Before changing \(courses)")
courses[44542] = "Java Script"
print("After Changing \(courses)")
print(courses[44542])
courses.removeValue(forKey: 44613)
print(courses)

 for (key,values) in courses{
   print(key)
}

for(key, values ) in courses{
   print(values)
   }

for (key,values) in courses
 {
    print("\(key) : \(values)")
   }
