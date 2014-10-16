//
//  ViewController.swift
//  Providing Basic Content to a Collection View
//
//  Created by Vandad Nahavandipoor on 7/1/14.
//  Copyright (c) 2014 Pixolity Ltd. All rights reserved.
//
//  These example codes are written for O'Reilly's iOS 8 Swift Programming Cookbook
//  If you use these solutions in your apps, you can give attribution to
//  Vandad Nahavandipoor for his work. Feel free to visit my blog
//  at http://vandadnp.wordpress.com for daily tips and tricks in Swift
//  and Objective-C and various other programming languages.
//
//  You can purchase "iOS 8 Swift Programming Cookbook" from
//  the following URL:
//  http://shop.oreilly.com/product/0636920034254.do
//
//  If you have any questions, you can contact me directly
//  at vandad.np@gmail.com
//  Similarly, if you find an error in these sample codes, simply
//  report them to O'Reilly at the following URL:
//  http://www.oreilly.com/catalog/errata.csp?isbn=0636920034254

import UIKit

class ExhibitCollectionGrid: UICollectionViewController {
        let cellId = "Cell"

        override init(collectionViewLayout layout: UICollectionViewLayout!) {
            super.init(collectionViewLayout: layout)
            
            let nib = UINib(nibName: "HomeGridCell", bundle: nil)
            
            collectionView!.registerNib(nib, forCellWithReuseIdentifier: "cell")
            collectionView!.backgroundColor = UIColor.whiteColor()
            collectionView!.pagingEnabled = true
            collectionView!.showsHorizontalScrollIndicator = false
            collectionView!.showsVerticalScrollIndicator = false
        

        }

    
        convenience required init(coder aDecoder: NSCoder) {
            let flowLayout = UICollectionViewFlowLayout()
            
            flowLayout.minimumLineSpacing = 1
            flowLayout.minimumInteritemSpacing = 1
            flowLayout.scrollDirection = .Vertical
            flowLayout.sectionInset = UIEdgeInsets(top: 0, left:0, bottom: 0, right: 0)
            
            self.init(collectionViewLayout: flowLayout)
            flowLayout.itemSize = CGSize(width: (self.view.bounds.width/2) - 0.5, height: 140);
        }

    
        override func collectionView(collectionView: UICollectionView,
            cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
                
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as HomeGridCell
                cell.backgroundColor = UIColor.blackColor()
                cell.textLabel.text = dataModel.titleForItemAtIndexPath(indexPath)
                
                println()
                println(dataModel.titleForItemAtIndexPath(indexPath))
                
            return cell
        }

    
        override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
           
            return dataModel.numberOfSections()
        }
    
    
        override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            
            return  dataModel.numberOfItemsInSection(section)
        }
    
    
        // hide status bar
        override func prefersStatusBarHidden() -> Bool {
            return true
        }
    
    
        // collectionView touch
        override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
            println("hittin button")
        
            // so go to the detail page
        }
}
