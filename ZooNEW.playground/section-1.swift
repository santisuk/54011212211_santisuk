// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Zoo{
   
    let name:[String]  = ["งู","เสือ","สิงโต"]
    let food: [String] = ["ไก่","กวาง","ควายป่า"]
    
    
    init () {}
    
    
    
    func nameAndFood(Name:String) {
        for (var i = 0; i < name.count; i++) {
            if (name[i] == Name) {
                print("name \(name[i]) ")
                println("food \(food[i])")
            } else {println("No name")}
        }
    }

}
//let food = Zoo(name: "งู", food: "ไก่")
let food = Zoo()
food.nameAndFood("เสือ")
