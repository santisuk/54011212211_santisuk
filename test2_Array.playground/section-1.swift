// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var shoppingListExplicit = [String]()
shoppingListExplicit = ["Eggs","milk"]
// var shoppingListExplicit : [String] = ["Eggs","milk"]

var shoppingList = ["Eggs","milk"]
println("The shopping list contains \(shoppingList.count) items.")
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate spread" , "Cheese" , "Butter"]

var firstItem = shoppingList[0]
shoppingList[0] = "Six eggs"
//shoppingList[0...3] = ["Bananas", "Apples"]
shoppingList