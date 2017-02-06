//
//  Example5ViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hoche on 02/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class Example5ViewController: UIViewController {

    
    @IBOutlet weak var test1: UIView!
    @IBOutlet weak var black1: UIView!
    
    @IBOutlet weak var test2: UIView!
    @IBOutlet weak var black2: UIView!
    
    @IBOutlet weak var test3: UIView!
    @IBOutlet weak var black3: UIView!
    
    @IBOutlet weak var test4: UIView!
    @IBOutlet weak var black4: UIView!
    
    @IBOutlet weak var test5: UIView!
    @IBOutlet weak var black5: UIView!
    
    @IBOutlet weak var test6: UIView!
    @IBOutlet weak var black6: UIView!
    
    @IBOutlet weak var test7: UIView!
    @IBOutlet weak var black7: UIView!
    
    @IBOutlet weak var test8: UIView!
    @IBOutlet weak var black8: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        test1.placeInCenter(of: view)
        black1.placeInCenter(of: test1)
        
        test2.placeInLeft(of: view)
        test2.placeInTop(of: view)
        black2.placeInLeft(of: test2)
        black2.placeInTop(of: test2)
        
        test3.placeInRight(of: view)
        test3.placeInBottom(of: view, offset: -45)
        black3.placeInRight(of: test3)
        black3.placeInBottom(of: test3)
        
        
        test4.placeInMidX(of: view)
        test4.placeInTop(of: view)
        black4.placeInMidX(of: test4)
        black4.placeInTop(of: test4)
        
        test5.placeInMidY(of: view)
        test5.placeInRight(of: view)
        black5.placeInMidX(of: test5)
        black5.placeInMidY(of: test5)
        
        //
        
        test6.placeInLeftOfSuperView(offset: 20)
        test6.placeInMidYOfSuperView()
        black6.placeOnLeft(of: test6)
        
        test7.placeOnRight(of: test6, offset: 10)
        test7.placeInMidYOfSuperView()
        black7.placeOnTop(of: test7)
        
        test8.placeInLeft(of: test1)
        test8.placeOnTop(of: test1, offset: -10)
        
        
        UIView.animate(withDuration: 5, delay: 5, options: .curveEaseInOut, animations: {
            self.test1.placeInBottomOfSuperView(offset: -45)
            
            self.test2.placeInMidXOfSuperView()
            self.black2.placeInRightOfSuperView()
            
            self.test3.placeInBottomOfSuperView(offset: -60)
            self.test3.placeInRightOfSuperView(offset: -60)
            
            self.test4.placeInRightOfSuperView(offset: -20)
            self.black4.placeInBottomOfSuperView()
            
            
            
            self.test8.placeOnRight(of: self.test7, offset: 10)
            self.test8.placeInMidYOfSuperView()
            self.black8.placeOnBottom(of: self.test8)
            
            self.test5.placeOnRight(of: self.test8, offset: 10)
            //self.black5.placeOnRight(of: self.test5)
            
        }) { (completion) in
            
            UIView.animate(withDuration: 5, animations: { 
                self.black5.placeOnRight(of: self.test5)
            })
            
        }
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
