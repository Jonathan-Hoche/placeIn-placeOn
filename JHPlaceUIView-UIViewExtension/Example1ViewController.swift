//
//  Example1ViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hoche on 06/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class Example1ViewController: UIViewController {

    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var blue: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var onRightLabel: UILabel!
    @IBOutlet weak var onLeftLabel: UILabel!
    @IBOutlet weak var onBottomLabel: UILabel!
    @IBOutlet weak var onTopLabel: UILabel!
    
    
    @IBOutlet weak var pink: UIView!
    @IBOutlet weak var white: UIView!
    @IBOutlet weak var orange: UIView!
    @IBOutlet weak var cyan: UIView!
    @IBOutlet weak var purple: UIView!
    @IBOutlet weak var inRightLabel: UILabel!
    @IBOutlet weak var inLeftLabel: UILabel!
    @IBOutlet weak var inBottomLabel: UILabel!
    @IBOutlet weak var inTopLabel: UILabel!
    @IBOutlet weak var inCenterLabel: UILabel!
    
    @IBOutlet weak var inMidXandBottomButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onRightLabel.placeOnRight(of: red)
        onRightLabel.placeInMidY(of: red)
        onLeftLabel.placeOnLeft(of: yellow)
        onLeftLabel.placeInMidY(of: yellow)
        onBottomLabel.placeOnBottom(of: blue)
        onBottomLabel.placeInMidX(of: blue)
        onTopLabel.placeOnTop(of: green)
        onTopLabel.placeInMidX(of: green)
        
        inRightLabel.placeInRight(of: pink)
        inRightLabel.placeInMidY(of: pink)
        inLeftLabel.placeInLeft(of: white)
        inLeftLabel.placeInMidY(of: white)
        inBottomLabel.placeInBottom(of: orange)
        inBottomLabel.placeInMidX(of: orange)
        inTopLabel.placeInTop(of: cyan)
        inTopLabel.placeInMidX(of: cyan)
        inCenterLabel.placeInCenter(of: purple)
       
        inMidXandBottomButton.placeInMidXOfSuperView()
        inMidXandBottomButton.placeOnBottom(of: purple, offset: 10)
    }
    
    @IBAction func placeButtonTouchUpInside(_ sender: UIButton) {
        UIView.animate(withDuration: 3, animations: {
            self.onRightLabel.placeInMidYOfSuperView()
            self.onLeftLabel.placeInMidYOfSuperView()
            self.onBottomLabel.placeInMidYOfSuperView()
            self.onTopLabel.placeInMidYOfSuperView()
            
            self.inRightLabel.placeInMidYOfSuperView()
            self.inLeftLabel.placeInMidYOfSuperView()
            self.inBottomLabel.placeInMidYOfSuperView()
            self.inTopLabel.placeInMidYOfSuperView()
            self.inCenterLabel.placeInMidYOfSuperView()
            
            self.inMidXandBottomButton.placeInMidYOfSuperView()
        }) { (completion) in
            UIView.animate(withDuration: 5, animations: { 
                self.onRightLabel.placeOnRight(of: self.view)
                self.onLeftLabel.placeOnLeft(of: self.view)
                self.onBottomLabel.placeOnBottom(of: self.view)
                self.onTopLabel.placeOnTop(of: self.view)
                
                self.inRightLabel.placeInRightOfSuperView()
                self.inLeftLabel.placeInLeftOfSuperView()
                self.inBottomLabel.placeInBottomOfSuperView(offset: -50)
                self.inTopLabel.placeInTopOfSuperView(offset: 20)
                self.inMidXandBottomButton.placeInMidXOfSuperView()
                self.inMidXandBottomButton.placeOnBottom(of: self.purple, offset: 10)
            }, completion: { (completion) in
                
                UIView.animate(withDuration: 5, delay: 5, options: .curveEaseInOut, animations: { 
                    self.onRightLabel.placeOnRight(of: self.red)
                    self.onRightLabel.placeInMidY(of: self.red)
                    self.onLeftLabel.placeOnLeft(of: self.yellow)
                    self.onLeftLabel.placeInMidY(of: self.yellow)
                    self.onBottomLabel.placeOnBottom(of: self.blue)
                    self.onBottomLabel.placeInMidX(of: self.blue)
                    self.onTopLabel.placeOnTop(of: self.green)
                    self.onTopLabel.placeInMidX(of: self.green)
                    
                    self.inRightLabel.placeInRight(of: self.pink)
                    self.inRightLabel.placeInMidY(of: self.pink)
                    self.inLeftLabel.placeInLeft(of: self.white)
                    self.inLeftLabel.placeInMidY(of: self.white)
                    self.inBottomLabel.placeInBottom(of: self.orange)
                    self.inBottomLabel.placeInMidX(of: self.orange)
                    self.inTopLabel.placeInTop(of: self.cyan)
                    self.inTopLabel.placeInMidX(of: self.cyan)
                    self.inCenterLabel.placeInCenter(of: self.purple)
                }, completion: nil )
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
