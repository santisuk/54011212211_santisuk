//
//  ColorTwoViewController.swift
//  webmoblie
//
//  Created by iStudents on 3/6/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

protocol  ColorTwoViewControllerDelegate {
    func myVCDidFinish(controller:ColorTwoViewController,text:String)
}

class ColorTwoViewController: UIViewController {
    
    var delegate:ColorTwoViewControllerDelegate? = nil
    var colorString = ""
    
    
    @IBAction func saveColor(sender: UIBarButtonItem) {
        if (delegate != nil) {
            delegate!.myVCDidFinish(self, text: colorLabel!.text!)
        }
    }
    
    
    

    
    @IBOutlet weak var colorLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
 
    
    @IBAction func colorSelectionbutton(sender: UIButton) {
        colorLabel.text = sender.titleLabel!.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorLabel.text = colorString
        // Do any additional setup after loading the view.
    }

        

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
