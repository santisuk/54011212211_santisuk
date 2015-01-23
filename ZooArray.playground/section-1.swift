// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class zoo{
    
    let animal: [String] = ["cat","dog" ]
    let food: [String] = ["grass","Chicken" ,"Beef"]
    var total:String
    
    init(animal:String){
        self.total = animal
    }
    
    
    func sumtotal()->String {
        var n = ""
        for(var i=0 ;i<animal.count;i++){
            if(total == animal[i])
            {
                n=food[i]
            }
        }
        return n
    }
}

let food = zoo (animal:"cat")
food.sumtotal()

