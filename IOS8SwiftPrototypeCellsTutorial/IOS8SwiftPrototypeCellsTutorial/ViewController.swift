//
//  ViewController.swift
//  IOS8SwiftPrototypeCellsTutorial
//
//  Created by iStudents on 2/13/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class ViewController:UIViewController, UITableViewDelegate {
    
    let cellIdentifier = "cellIdentifier"
    var tableData = ["Helicopter" ,"Truck2", "Likeicon"]
    
    
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
   
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableview!.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        cell.textLabel!.text = self.tableData[indexPath.row]
        var imageName = UIImage(named: tableData[indexPath.row])
        cell.imageView!.image = imageName
        return cell
        

    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let  aletr = UIAlertController(title: "Item selected", message: "You selected item \(indexPath.row)", preferredStyle: UIAlertControllerStyle.Alert)
        aletr.addAction(UIAlertAction (title: "OK",
            style: UIAlertActionStyle.Default, handler: {
                (aletr:UIAlertAction!) in print("An alert of type \(aletr.style.hashValue) was tapped!")
                
        }))
    
    self.presentViewController(aletr, animated: true, completion: nil)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableview.registerClass(UITableViewCell.self,forCellReuseIdentifier:self.cellIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

