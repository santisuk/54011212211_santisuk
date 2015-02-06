// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Calculator {
    
    let t1 : Double
    let t2 : Double
    var t3 : String
   
    
    init(t1:Double,t2:Double,t3:String){
        self.t1 = t1
        self.t2 = t2
        self.t3 = t3
      
    }
   
    func clssuop(){
        
        var total = 0.0
        
        if(t3 == "+"){
            total = c1.add()
        }
        else if(t3 == "-"){
           total = c1.delete()
        }
        if(t3 == "*"){
            total = c1.multiply()
        }
        else if (t3 == "/"){
            total = c1.division()
        }
        
        println("total \(total)")
    }
    func add()->Double {
        var total = t1 + t2
        return total
        
    }
    func delete()->Double {
        var total = t1 - t2
        return total
    }
    func multiply()->Double {
        var total = t1 * t2
        return total
    }
    func division()->Double {
     var total = t1 / t2
        return total
    }
}
let c1 = Calculator (t1: 4.0, t2: 16.0, t3: "+")
c1.clssuop()

//let c2 = Calculator (t1: 5.0, t2: 16.0, t3: "+")
//c2.clssuop()

