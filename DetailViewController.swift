//
//  DetailViewController.swift
//  Mulb
//
//  Created by Maarten Bressinck on 15/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController, UIScrollViewDelegate {
    var scrollView: UIScrollView!
    var closeButton: UIButton!

    
    func scrollViewDidScroll(scrollView: UIScrollView){
        /* Gets called when user scrolls or drags */
    
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        /* Gets called only after scrolling */

    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView!,
        willDecelerate decelerate: Bool){
    }
    
    func orientationChanged(notification: NSNotification){
        println("Orientation Changed")
    }
    
    @IBAction func backButtonHandler(sender: AnyObject) {
        println("backbutton")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        println("in scroll view")
        
        // content view
        var contentView = ScrollDetailView(frame:CGRect(x: 0, y: 0, width: view.bounds.width, height: (view.bounds.height * 2)))
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.bounds.size
        scrollView.delegate = self
        scrollView.layer.zPosition =  100
        view.addSubview(scrollView)
        
        // add backbutton
        closeButton = UIButton.buttonWithType(.System) as? UIButton
        closeButton.frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: 44)
        closeButton.setTitle("Press Me", forState: .Normal)
        closeButton.addTarget(self, action: "closeButtonHandler:", forControlEvents: .TouchUpInside)

        view.addSubview(closeButton)
    }
    

    func closeButtonHandler(sender: UIButton!) {
            println("hllo")
            self.dismissViewControllerAnimated(true, nil);
    }
    
    
    // hide status bar
    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}