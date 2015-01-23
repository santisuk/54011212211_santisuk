// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var airports : [String:String] = ["TYO":"Tokyo","DUB": "Dublin"]

if airports.isEmpty{
    println("The airports dictionary is empty.")
}else{
    println("The airporst dictionary is not empty.")
}
println("THe airporst dictionary contains\(airports.count)items.")

//Remove

airports["APL"] = "Apple International"
airports["APL"] = nil

if let removedValue = airports.removeValueForKey("DUB"){
    println("THe removed airport's name is \(removedValue).")
    
}else{
    println("The airports dictionary does not contain a value for DUB.")
}