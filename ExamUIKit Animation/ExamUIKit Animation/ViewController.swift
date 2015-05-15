//
//  ViewController.swift
//  ExamUIKit Animation
//
//  Created by iStudents on 3/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let container = UIView()
    let redSquare = UIView()
    let blueSquare = UIView()
    
  /*  @IBAction func Random(sender: AnyObject) {
        var views : (frontView: UIView,backView:UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView : self.redSquare,backView:self.blueSquare)
        }
        else{
            views = (frontView:self.blueSquare,backView:self.redSquare)
        }
        
        let ramdom = Int(arc4random_uniform(4))+1
        if (ramdom == 1 ){
            let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
                }
            else if(ramdom == 1 ){
            let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
                }
            else if(ramdom == 1 ){
            let transitionOptions = UIViewAnimationOptions.TransitionFlipFromRight
                }
            else if(ramdom == 1 ){
            let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
                }
        
       UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions , completion: nil)
 
    } */
    
    
    @IBAction func animateButtonTapped(sender: AnyObject) {
      /*  let views = (frontView:self.redSquare,backview:self.blueSquare)
        let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
        UIView.transitionWithView(self.container, duration: 1.0, options: transitionOptions, animations: {
            views.frontView.removeFromSuperview()
            
            self.container.addSubview(views.backview)
            }, completion: {finished in
        }) */
        
        var views : (frontView: UIView,backView:UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView : self.redSquare,backView:self.blueSquare)
        }
        else{
            views = (frontView:self.blueSquare,backView:self.redSquare)
        }
        
        //let ramdom = Int(arc4random_uniform(4))+1
        //if (ramdom == 1 ){
            let transitionOptions = UIViewAnimationOptions.TransitionCurlUp
      //  }
      //  else if(ramdom == 1 ){
        //    let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
      //  }
       
        //let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
        //let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
         //let transitonOptions = UIViewAnimationOptions.TransitionFlipFromRight
        
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }

   @IBAction func animationLeft(sender: AnyObject) {
        var views : (frontView: UIView,backView:UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView : self.redSquare,backView:self.blueSquare)
        }
        else{
            views = (frontView:self.blueSquare,backView:self.redSquare)
        }
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromLeft
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    
    @IBAction func animationdown(sender: AnyObject) {
        var views : (frontView: UIView,backView:UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView : self.redSquare,backView:self.blueSquare)
        }
        else{
            views = (frontView:self.blueSquare,backView:self.redSquare)
        }
        
        let transitionOptions = UIViewAnimationOptions.TransitionCurlDown
                
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    
    @IBAction func animationRight(sender: AnyObject) {
        var views : (frontView: UIView,backView:UIView)
        if((self.redSquare.superview) != nil){
            views = (frontView : self.redSquare,backView:self.blueSquare)
        }
        else{
            views = (frontView:self.blueSquare,backView:self.redSquare)
        }
        let transitionOptions = UIViewAnimationOptions.TransitionFlipFromRight
        
        UIView.transitionFromView(views.frontView, toView: views.backView, duration: 1.0, options: transitionOptions, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.container.frame = CGRect(x: 100, y: 60, width: 200, height: 200)
        self.view.addSubview(container)
        
        self.redSquare.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        
        self.blueSquare.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
       // self.blueSquare.frame = redSquare.frame
        
        self.redSquare.backgroundColor = UIColor.redColor()
        self.blueSquare.backgroundColor = UIColor.blueColor()
        
        self.container.addSubview(self.redSquare)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

