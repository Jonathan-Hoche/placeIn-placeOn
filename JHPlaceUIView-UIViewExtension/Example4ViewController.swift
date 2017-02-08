//
//  Example4ViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hoche on 02/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class Example4ViewController: UIViewController {
    
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var white: UIView!
    
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var brown: UIView!
    @IBOutlet weak var black1: UIView!
    @IBOutlet weak var black2: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var pink: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 3) {
            self.orange.placeInCenterOfSuperView()
            self.white.placeInCenter(of: self.orange)
            
            self.red.placeInMidX(of: self.white)
            self.red.placeInTop(of: self.white)
            
            self.blue.placeInLeft(of: self.white)
            self.blue.placeOnBottom(of: self.red)
            
            
            self.black1.placeInRight(of: self.white)
            self.black1.placeOnBottom(of: self.red)
            
            self.yellow.placeOnLeft(of: self.black1)
            self.yellow.placeOnBottom(of: self.red)
            //
            
            //
            self.brown.placeOnRight(of: self.blue)
            self.brown.placeInBottom(of: self.white)
            
            self.black2.placeOnRight(of: self.blue)
            self.black2.placeOnTop(of: self.brown)
            
            self.pink.placeOnRight(of: self.black2)
            self.pink.placeOnBottom(of: self.yellow)
            
            self.green.placeOnRight(of: self.pink)
            self.green.placeOnTop(of: self.brown)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
