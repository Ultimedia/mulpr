//
//  ViewController.swift
//  Mulb
//
//  Created by Maarten Bressinck on 15/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIKit

class AppController: UIViewController {

    
    // UI
    var scrollButton: UIButton!
    var gridButton: UIButton!

    
    // Connection / Data
    var data = NSMutableData()
    
    
    func alertWithTitle(title: String, message: String) {
        var alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // before we launch see if there is a working internet connection
        if(settingsModel.networkConnection){

            // check if there are beacons in the are (are we at an exhibit?)
            
            
            // no beacons
        
            // create UI
            createUI()
            
        }else{

            // toon de noConnection view
            let noConnectionView = self.storyboard?.instantiateViewControllerWithIdentifier("NoConnectionView") as NoConnectionViewController
            self.presentViewController(noConnectionView, animated: true, completion: nil)
        
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
    
    
    // create and draw the UI elements
    func createUI(){
        
        // add scrollbutton
        scrollButton = UIButton.buttonWithType(.System) as? UIButton
        scrollButton.frame = CGRect(x: 0, y: 10, width: view.bounds.width, height: 44)
        scrollButton.setTitle("Toon ScrollView", forState: .Normal)
        scrollButton.addTarget(self, action: "scrollButtonHandler:", forControlEvents: .TouchUpInside)
        view.addSubview(scrollButton)
        
        
        // add gridview button
        gridButton = UIButton.buttonWithType(.System) as? UIButton
        gridButton.frame = CGRect(x: 0, y: 80, width: view.bounds.width, height: 44)
        gridButton.setTitle("Toon GridView", forState: .Normal)
        gridButton.addTarget(self, action: "gridButtonHandler:", forControlEvents: .TouchUpInside)
        view.addSubview(gridButton)
    }
    
    
    func scrollButtonHandler(sender: UIButton!) {
        let scrollView = self.storyboard?.instantiateViewControllerWithIdentifier("ScrollView") as DetailViewController
        self.presentViewController(scrollView, animated: true, completion: nil)
    }
    
    func gridButtonHandler(sender: UIButton!) {
        let gridView = self.storyboard?.instantiateViewControllerWithIdentifier("ExhibitCollection") as ExhibitCollectionGrid
        self.presentViewController(gridView, animated: true, completion: nil)
    }
}

