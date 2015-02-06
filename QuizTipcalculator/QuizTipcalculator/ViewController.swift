//
//  ViewController.swift
//  QuizTipcalculator
//
//  Created by iStudents on 2/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    //outlet
    @IBOutlet weak var show1: UILabel!
    
    @IBOutlet weak var show2: UILabel!
    
    @IBOutlet weak var show3: UILabel!
    
    //action
    var total1 = 0
   // var total2 = 0
    //var total3 = 0
    
    @IBAction func oneclick(sender: AnyObject) {
        total1+=1
        show1.text = String(format: "%d", total1)
    
    }
    
    @IBAction func twoclick(sender: AnyObject) {
        total1+=2
        show2.text = String(format: "%d", total1)
    }
    
    @IBAction func threeclick(sender: AnyObject) {
        total1+=3
        show3.text = String(format: "%d", total1)
    }
    
    @IBAction func ResetAll(sender: AnyObject) {
        
        show1.text = "0"
        show2.text = "0"
        show3.text = "0"
        
        total1 = 0
        //total2 = 0
       // total3 = 0
    }
    
    
    

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

