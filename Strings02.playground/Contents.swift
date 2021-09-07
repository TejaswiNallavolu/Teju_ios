import UIKit


var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

//a
if clothes.hasPrefix("Socks")
{
print("The first item in clothes is socks")
}
else
{
    print("socks is not the first item in clothes")
    
}

//b
print(foodItems.split(separator: ","))

//c
if clothes.contains(",")
{
    print("Clothes contains more than one item")
    }
else
{
    print("Clothes contain only one item")
    }

//d
foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]

//e
shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy: 8)..<foodItems.endIndex]

//f
clothes.remove(at: clothes.firstIndex(of: "T")!)

//g
clothes.remove(at: clothes.firstIndex(of: "-")!)

//h
print("\(shoppingList), \(clothes)")

//i
clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex)

//j
var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])
