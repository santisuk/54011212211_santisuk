//
//  Tipcalculatormodel.swift
//  Tipcalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get{
            return total / (taxPct+1)
        }
    }
    
    init(total:Double,taxPct:Double){
    self.total = total
    self.taxPct = taxPct
    }
    
    func calctipwithtipPct(tipPct:Double) ->Double{
        return subtotal * tipPct
    }
    
    func returnPossibleTips() -> [Int : Double]{
        let possibleTipsInfered = [0.15,0.18,0.20]
        let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
        
        var retval = [Int:Double]()
        for possibletip in possibleTipsInfered {
            let intPct = Int(possibletip*100)
            retval[intPct] = calctipwithtipPct(possibletip)
        }
        return retval
    }
}