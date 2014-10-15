//
//  ViewController.swift
//  Mulb
//
//  Created by Maarten Bressinck on 15/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIKit

class AppController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // before we launch see if there is a working internet connection
        if(settingsModel.networkConnection){
            println("connection")
            
            
            
        }else{
            println("no connection")
            // toon de noConnection view
            let noConnectionView = self.storyboard?.instantiateViewControllerWithIdentifier("NoConnectionView") as NoConnectionViewController
            self.presentViewController(noConnectionView, animated: true, completion: nil)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

