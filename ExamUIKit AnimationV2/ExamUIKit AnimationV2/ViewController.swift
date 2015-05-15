//
//  ViewController.swift
//  ExamUIKit AnimationV2
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
   
    let fish = UIImageView()
    
    
    @IBAction func animateButtonTapped(sender: AnyObject) {
    
  
      
                
        fish.image = UIImage(named: "krahea.jpg")
        fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
        self.view.addSubview(fish)
        
        
        let fullRotation = CGFloat(M_PI * 2)
        
        UIView.animateWithDuration(1.0, animations: {
            self.fish.transform = CGAffineTransformMakeRotation(fullRotation)
            
            let duration = 2.0
            let delay = 0.0
            let options = UIViewKeyframeAnimationOptions.CalculationModeLinear
            //let options = UIViewKeyframeAnimationOptions.CalculationModePaced
            
            UIView.animateKeyframesWithDuration(duration , delay: delay, options: options, animations: {
                
                UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 1/3, animations: {
                    self.fish.transform = CGAffineTransformMakeRotation(1/3 * fullRotation)
                })
                UIView.addKeyframeWithRelativeStartTime(1/3, relativeDuration: 1/3, animations: {
                    self.fish.transform = CGAffineTransformMakeRotation(2/3 * fullRotation)
                })
                UIView.addKeyframeWithRelativeStartTime(2/3, relativeDuration: 1/3, animations: {
                    self.fish.transform = CGAffineTransformMakeRotation(3/3 * fullRotation)
                })
                }, completion: {  finished in
            })
            
            
        })
    
    
    
    }
   
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        
      
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

