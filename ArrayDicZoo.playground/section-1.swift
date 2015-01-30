// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Array
{
    var name :[Int:String] = [1:"AA",2:"BB",3:"CC"]
    var food :[Int:String] = [1:"aa",2:"bb",3:"cc"]
    
    init(){}
    
    func ckecking(Name:String){
        var x = 0
        for(var i = 0 ; i<=name.count;i++){
            if(name[i] == Name){
                x=i
            }
        }
        print("\(name[x])\(food[x])")
    }
   

}
let c = Array()
c.ckecking("a")