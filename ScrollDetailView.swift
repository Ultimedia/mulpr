//
//  ScrollDetailView.swift
//  Mulb
//
//  Created by Maarten Bressinck on 16/10/14.
//  Copyright (c) 2014 Maarten Bressinck. All rights reserved.
//

import UIkit

class ScrollDetailView: UIView {

    // UI elements
    var textView: UITextView?
    var label: UILabel?

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.createUI()
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func createUI() {
        
        println("creating UI")
        
        textView = UITextView(frame: CGRect(x: 20, y: 100, width: self.bounds.width, height: 300))
        if let theTextView = textView{
            theTextView.text = "In an interesting study on the topic of alcohol and its effects on creativity, author Dave Birss brought together a group of 18 advertising creative directors and split theinto two teams."
            theTextView.contentInset = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
            theTextView.font = UIFont.systemFontOfSize(16)
            theTextView.scrollEnabled = false
            self.addSubview(theTextView)
        }
        
        label = UILabel(frame: CGRect(x: 20, y: 40, width: self.bounds.width, height: 70))
        label!.numberOfLines = 3
        label!.lineBreakMode = .ByWordWrapping
        label!.text = "iOS Programming Cookbook"
        label!.font = UIFont.boldSystemFontOfSize(14)
        self.addSubview(label!)
        
    }
}















































