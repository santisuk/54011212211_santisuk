//
//  ViewController.swift
//  ExamUIKit AnimationV3
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func animateButtonTapped(sender: AnyObject) {
        
        
        
      /*  let square = UIView()
        square.frame = CGRect(x: 55, y: 300, width: 20, height: 20)
        square.backgroundColor = UIColor.redColor()
        
        // add the square to the screen
        self.view.addSubview(square)
        
        // now create a bezier path that defines our curve
        // the animation function needs the curve defined as a CGPath
        // but these are more difficult to work with, so instead
        // we'll create a UIBezierPath, and then create a
        // CGPath from the bezier when we need it
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16,y: 239))
        path.addCurveToPoint(CGPoint(x: 301, y: 239), controlPoint1: CGPoint(x: 136, y: 373), controlPoint2: CGPoint(x: 178, y: 110))
        
        // create a new CAKeyframeAnimation that animates the objects position
        let anim = CAKeyframeAnimation(keyPath: "position")
        
        // set the animations path to our bezier curve
        anim.path = path.CGPath
        
        // set some more parameters for the animation
        // this rotation mode means that our object will rotate so that it's parallel to whatever point it is currently on the curve
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 5.0
        
        // we add the animation to the squares 'layer' property
        square.layer.addAnimation(anim, forKey: "animate position along path") */
        
        
        for i in 0...5 {
        
        let fish = UIImageView()
        let fishRandom = Int(arc4random_uniform(5)+1)
            
            fish.image = UIImage(named: "fish_\(fishRandom).png")
            fish.frame = CGRect(x: 50, y: 50, width: 50, height: 50)
            self.view.addSubview(fish)
        
         let randomYOffset = CGFloat( arc4random_uniform(150))
            
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 16, y: 100 ))
        path.addCurveToPoint(CGPoint(x: 150, y: 100 ), controlPoint1: CGPoint(x: 100, y: 100 ), controlPoint2: CGPoint(x: 100, y: 100 ))
            
        let anim = CAKeyframeAnimation(keyPath: "position")
        anim.path = path.CGPath
        anim.rotationMode = kCAAnimationRotateAuto
        anim.repeatCount = Float.infinity
        anim.duration = 2.0
            
        anim.duration = Double(arc4random_uniform(40)+30) / 20
        anim.timeOffset = Double(arc4random_uniform(290))
        
        fish.layer.addAnimation(anim, forKey: "animate position along path")
        //square.layer.addAnimation(anim, forKey: "animate position along path")     //  square.layer.addAnimation(anim, forKey: "animate position along path")
            
            
        }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "pecera_1024x768.jpg"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

