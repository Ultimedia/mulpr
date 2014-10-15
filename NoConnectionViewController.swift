//
//  NoConnectionViewController.swift
//  Mulb
//
//  Created by Maarten Bressinck on 15/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIKit


class NoConnectionViewController: UIViewController {
    
    // refresh connection
    @IBAction func refreshCollectionButton(sender: AnyObject) {
        if Reachability.isConnectedToNetwork() {
            settingsModel.networkConnection = true
            
            // go back to the main screen
            self.dismissViewControllerAnimated(true, nil);
            
        } else {
            settingsModel.networkConnection = false
        }
        println("Netwerkverbinding: \(settingsModel.networkConnection)")
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


