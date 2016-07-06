//
//  ViewController.swift
//  episode7
//
//  Created by apple on 15/05/16.
//  Copyright © 2016 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var players=["shikhar","rohit","virat","raina","yuvraj","dhoni","jadeja","harbhajan","bhubneswar","ashish","ashwin"]
    
 var heje=[["name":"","age":""],["name":"","age":""]]
    
    
    
   
    var sampleDict:[String:AnyObject]=["name":"confiance","age":1,"score":[13,35,66,99]]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        var myScore=sampleDict["score"] as! [Int]
       print(myScore[1])
       
    
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.players.count
    }

    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:playerCell=tableView.dequeueReusableCellWithIdentifier("playerCell", forIndexPath: indexPath) as! playerCell
        
        cell.accessoryType=nil
        cell.playerImage.image=UIImage(named:self.players[indexPath.row])
        cell.playerName.text=self.players[indexPath.row]
        
        
        return cell
        
        
    }
  
    
    
   

}

