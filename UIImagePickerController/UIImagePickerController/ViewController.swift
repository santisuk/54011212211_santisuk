//
//  ViewController.swift
//  UIImagePickerController
//
//  Created by iStudents on 4/3/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit
import MobileCoreServices
import AssetsLibrary
class ViewController: UIViewController ,UINavigationControllerDelegate,UIImagePickerControllerDelegate {

    var imagePiker: UIImagePickerController!
    var newMedia: Bool!
    
    var beginImage: CIImage!
    var filter: CIFilter!
    var context:CIContext!
    var orientation: UIImageOrientation = .Up
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var amountSlider: UISlider!
    
    
    
    
    @IBAction func mountsliderValueChanged(sender: UISlider) {
        let sliderValue = sender.value
        
        let outputImage = self.oldPhoto(beginImage, withAmount: sliderValue)
        
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        let newImage = UIImage(CGImage: cgimg, scale: 1, orientation: orientation)
        self.imageView.image = newImage
    }
    
    
    
    @IBAction func takePhoto(sender: AnyObject) {
       /* imagePiker.allowsEditing = false
        imagePiker.sourceType = .Camera
        imagePiker.mediaTypes = [kUTTypeImage as NSString]
        presentViewController(imagePiker, animated: true, completion: nil)
        
        newMedia = true */
        
        // 1
        let fileURL = NSBundle.mainBundle().URLForResource("Azureus", withExtension: "png")
        
        // 2
        beginImage = CIImage(contentsOfURL: fileURL)
        
        // 3
        filter = CIFilter(name: "CISepiaTone")
        filter.setValue(beginImage, forKey: kCIInputImageKey)
        filter.setValue(0.5, forKey: kCIInputIntensityKey)
        let outputImage = filter.outputImage
        
        // 1
        context = CIContext(options: nil)
        let cgimg = context.createCGImage(outputImage, fromRect: outputImage.extent())
        
        // 2
        let newImage = UIImage(CGImage: cgimg)
        self.imageView.image = newImage
        
        self.logAllfilters()
        
    }
    
    
    func logAllfilters(){
        let properties = CIFilter.filterNamesInCategory(kCICategoryBuiltIn)
        println(properties)
        
        for filterName: AnyObject in properties{
            let fltr = CIFilter(name: filterName as String)
            println(fltr.attributes())
        }
    }
 
    @IBAction func library(sender: AnyObject) {
       imagePiker.allowsEditing = false
        imagePiker.sourceType = .PhotoLibrary
        imagePiker.mediaTypes = [kUTTypeImage as NSString]
        
        
     //   beginImage = CIImage(contentsOfURL: fileURL)
        //imagePiker.setValue(beginImage, forKey: kCIInputAngleKey)
        
        presentViewController(imagePiker, animated: true, completion: nil)
        newMedia = false
        
        
    }
    
    
    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        dismissViewControllerAnimated(true, completion: nil)
        
        let mediaType = info[UIImagePickerControllerMediaType] as NSString
        if(mediaType.isEqualToString(kUTTypeImage as NSString)){
            let image = info[UIImagePickerControllerOriginalImage] as UIImage
            imageView.image = image
            if(newMedia == true) {
                UIImageWriteToSavedPhotosAlbum(image, self, "image: didFinishSavingWithError: contextInfo:", nil)
            }
        }
    }
    
    func image(image: UIImage,didFinishSavingWithError error: NSErrorPointer,contextInfo:UnsafePointer<Void>) {
        if(error != nil){
            let alert = UIAlertController(title: "Save Failed", message: "Failed to save image" , preferredStyle: UIAlertControllerStyle.Alert)
            
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel, handler: nil)
            
            alert.addAction(cancelAction)
            self.presentViewController(alert, animated: true, completion: nil)
            
        }
    }
    func oldPhoto(img:CIImage, withAmount intensity:Float) -> CIImage{
        // 1
        let sepia = CIFilter(name: "CISepiaTone")
        sepia.setValue(img, forKey: kCIInputImageKey)
        sepia.setValue(intensity, forKey: "inputIntensity")
        
        // 2
        let random = CIFilter(name: "CIRandomGenerator")
        
        // 3
        let lighten = CIFilter(name: "CIColorControls")
        lighten.setValue(random.outputImage, forKey:  kCIInputImageKey)
        lighten.setValue(1 - intensity, forKey: "inputBrightness")
        lighten.setValue(0, forKey: "inputSaturation")
        
        
        // 4
        let croppedImage = lighten.outputImage.imageByCroppingToRect(beginImage.extent())
        
        // 5
        let composite = CIFilter(name: "CIHardLightBlendMode")
        composite.setValue(composite.outputImage, forKey: kCIInputImageKey)
        composite.setValue(croppedImage, forKey: kCIInputBackgroundImageKey)
        
        // 6
        let vignette = CIFilter(name: "CIVignette")
        vignette.setValue(composite.outputImage, forKey: kCIInputImageKey)
        vignette.setValue(intensity * 2, forKey: "inputIntensity")
        vignette.setValue(intensity * 30, forKey: "inputRadius")
        
        // 7
        return vignette.outputImage
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagePiker = UIImagePickerController()
        imagePiker.delegate = self
        
      
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

