//
//  ViewController.swift
//  Tipcalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    ///outlet
    
    @IBOutlet weak var totalTextField: UITextField!
    @IBOutlet weak var taxPctSlider: UISlider!
    @IBOutlet weak var taxPctLabel: UILabel!
   
    @IBOutlet weak var resulitsTextview: UITextView!
   
    
    
    
    ///Action
    
    @IBAction func calculateTapped(sender: AnyObject) {
        //1
        tipcalc.total = Double((totalTextField.text as
            NSString).doubleValue)
        //2
        let possibleTips = tipcalc.returnPossibleTips()
        var results = ""
        
        //3
        for (tipPct,tipvalue) in possibleTips{
            //4
            results += "\(tipPct)%: \(tipvalue)\n"
        }
        //5
        resulitsTextview.text = results
    }
    @IBAction func taxPercentagechanged(sender: AnyObject) {
        tipcalc.taxPct = Double(taxPctSlider.value)/100
        refreshUI()
    }
    @IBAction func viewTapped(sender: AnyObject) {
        totalTextField.resignFirstResponder() //No on keboad
    }
    
    //// open viewcontroller.swift
    
    let tipcalc = TipCalculatorModel(total: 33.25, taxPct: 0.06)
    
    func refreshUI(){
        //1
        totalTextField.text = String(format: "%0.2f", tipcalc.total)
        //2
        taxPctSlider.value = Float(tipcalc.taxPct) * 100.0
        //3
        taxPctLabel.text = "Tax Percentage(\(Int(taxPctSlider.value))%)"
        //4
        resulitsTextview.text = ""
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ////////////////////////////
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        refreshUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

