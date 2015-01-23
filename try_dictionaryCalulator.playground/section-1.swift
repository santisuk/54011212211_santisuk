// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class TipCalculator {
    //2
    let total : Double
    let taxPct : Double
    let Subtotal : Double
    
    //3
    init(total:Double , taxPct:Double){
        self.total = total
        self.taxPct = taxPct
        Subtotal = total/(taxPct+1)
    }
    
    //4
    func calcTipWithTipPct(tipPct:Double)->Double{
        return Subtotal*tipPct
    }
    
    //remove
    //1
    func returnPossibleTips()->[Int : Double]{
        let possibleTipsInferred = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
        
        
        //2
        var retval = Dictionary<Int,Double>()
        for possibleTip in possibleTipsInferred {
            let intPCt = Int(possibleTip*100)
            //3
            retval[intPCt] = calcTipWithTipPct(possibleTip)
        }
        return retval
    }
}
//6
let tipCalc = TipCalculator(total: 33.25, taxPct: 0.06)
tipCalc.returnPossibleTips()