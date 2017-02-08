//
//  Example3ViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hoche on 01/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class Example3ViewController: UIViewController {

    @IBOutlet weak var red1: UIView!
    @IBOutlet weak var blue1: UIView!
    @IBOutlet weak var green1: UIView!
    
    @IBOutlet weak var red2: UIView!
    @IBOutlet weak var blue2: UIView!
    @IBOutlet weak var green2: UIView!
    
    @IBOutlet weak var red3: UIView!
    @IBOutlet weak var blue3: UIView!
    @IBOutlet weak var green3: UIView!
    
    @IBOutlet weak var red4: UIView!
    @IBOutlet weak var blue4: UIView!
    @IBOutlet weak var green4: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //
        red1.placeOnTop(of: blue1)
        red1.placeInLeft(of: blue1)
        
        green1.placeOnBottom(of: blue1)
        green1.placeInLeft(of: blue1)
        //
        
        //
        red2.placeOnLeft(of: blue2)
        red2.placeInTop(of: blue2)
        
        green2.placeOnRight(of: blue2)
        green2.placeInTop(of: blue2)
        //
        
        //
        red3.placeOnLeft(of: blue3)
        red3.placeOnTop(of: blue3)
        
        green3.placeOnRight(of: blue3)
        green3.placeOnBottom(of: blue3)
        //
        
        //
        UIView.animate(withDuration: 3) { 
            self.red4.placeInLeft(of: self.blue4, offset: -20)
            self.red4.placeInBottom(of: self.blue4, offset: 20)
            
            self.green4.placeInRight(of: self.blue4, offset: 20)
            self.green4.placeInBottom(of: self.blue4, offset: 20)
            
            self.red4.layer.cornerRadius = self.red4.frame.width / 2
            self.blue4.layer.cornerRadius = self.blue4.frame.width / 2
            self.green4.layer.cornerRadius = self.green4.frame.width / 2
            
            self.red4.alpha = 0.5
            self.blue4.alpha = 0.5
            self.green4.alpha = 0.5
        }
        //
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
