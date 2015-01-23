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