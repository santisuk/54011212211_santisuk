//
//  ViewController.swift
//  ExamUIKTAnimation4
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberOfFishSlider: UISlider!
    
    

    @IBAction func animateButtonPressed(sender: AnyObject) {
        //----------------1---------------------//
        
     /*   let coloredSquare = UIView()
        
        coloredSquare.backgroundColor = UIColor.blueColor()
        
        coloredSquare.frame = CGRect(x: 0, y: 120, width: 50, height: 50)
        
        self.view.addSubview(coloredSquare)
        
      /* UIView.animateWithDuration(1.0, animations: {
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            
            }) */
    UIView.animateWithDuration(1.0, animations: {
        
            coloredSquare.backgroundColor = UIColor.redColor()
            coloredSquare.frame = CGRect(x: 320-50, y: 120, width: 50, height: 50)
            
            }, completion: { animationFinished in
                
                coloredSquare.removeFromSuperview()
                
            })*/
        
    //----------------------2------------------//
        
       /* for loopNumber in 0...10 {
            
            // set up some constants for the animation
            let duration : NSTimeInterval = 1.0
            let delay : NSTimeInterval = 0.0
            let options = UIViewAnimationOptions.CurveLinear
            
          //  let delay = 0.0
          //  let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
            // set up some constants for the fish
          
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish and add it to the screen
            let fish = UIImageView()
            fish.image = UIImage(named: "fish_1.png")
            fish.frame = CGRectMake(0, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320-size, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
                    
            })
        
        }*/
        
        //----------------3---------------------//
        
        let numberOfFish = Int(self.numberOfFishSlider.value*20)
        for loopNumber in 0...numberOfFish {
            
            let duration = 2.0
            let options = UIViewAnimationOptions.CurveLinear
            
            // randomly assign a delay of 0.9 to 1s
            let delay = NSTimeInterval(900 + arc4random_uniform(100)) / 1000
            
            // set up some constants for the fish
            let size : CGFloat = CGFloat( arc4random_uniform(40))+20
            let yPosition : CGFloat = CGFloat( arc4random_uniform(200))+20
            
            // create the fish
            let fish = UIImageView()
            fish.image = UIImage(named: "fish_1.png")
            fish.frame = CGRectMake(0-size, yPosition, size, size)
            self.view.addSubview(fish)
            
            // define the animation
            UIView.animateWithDuration(duration, delay: delay, options: options, animations: {
                
                // move the fish
                fish.frame = CGRectMake(320, yPosition, size, size)
                
                }, completion: { animationFinished in
                    
                    // remove the fish
                    fish.removeFromSuperview()
            })
        
        }
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

