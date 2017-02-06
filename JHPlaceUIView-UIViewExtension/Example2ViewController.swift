//
//  Example2ViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hoche on 01/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class Example2ViewController: UIViewController {

    @IBOutlet weak var redBox1View: UIView!
    @IBOutlet weak var redBox2View: UIView!
    @IBOutlet weak var redBox3View: UIView!
    @IBOutlet weak var redBox4View: UIView!
    
    @IBOutlet weak var blueBox1View: UIView!
    
    @IBOutlet weak var yellowBox1View: UIView!
    @IBOutlet weak var greenBox1View: UIView!
    
    @IBOutlet weak var greenBox2View: UIView!
    @IBOutlet weak var blackBox1View: UIView!
    
    @IBOutlet weak var pinkBox1View: UIView!
    @IBOutlet weak var pinkBox2View: UIView!
    @IBOutlet weak var pinkBox3View: UIView!
    @IBOutlet weak var pinkBox4View: UIView!
    @IBOutlet weak var pinkBox5View: UIView!
    @IBOutlet weak var pinkBox6View: UIView!
    @IBOutlet weak var pinkBox7View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redBox1View.placeInLeftOfSuperView(offset: 20)
        redBox1View.placeInTopOfSuperView(offset: 20)
        
        redBox2View.placeInRightOfSuperView(offset: -20)
        redBox2View.placeInTopOfSuperView(offset: 20)
        
        redBox3View.placeInLeftOfSuperView(offset: 20)
        redBox3View.placeInBottomOfSuperView(offset: -50)
        
        redBox4View.placeInRightOfSuperView(offset: -20)
        redBox4View.placeInBottomOfSuperView(offset: -50)
        
        blueBox1View.placeInCenterOfSuperView()
        greenBox2View.placeInCenter(of: blueBox1View)
        
        yellowBox1View.placeInMidXOfSuperView()
        yellowBox1View.placeInBottomOfSuperView(offset: -70)
        greenBox1View.placeInMidXOfSuperView()
        greenBox1View.placeInTopOfSuperView()
        
        blackBox1View.placeInRight(of: yellowBox1View)
        blackBox1View.placeInBottom(of: yellowBox1View)
        
        //MARK: - Pink Boxes
        pinkBox1View.placeInLeftOfSuperView(offset: 20)
        pinkBox1View.placeInTopOfSuperView(offset: 100)
        
        pinkBox2View.placeInLeftOfSuperView(offset: 60)
        pinkBox2View.placeInTopOfSuperView(offset: 105)
        
        pinkBox3View.placeInLeftOfSuperView(offset: 100)
        pinkBox3View.placeInTopOfSuperView(offset: 110)
        
        pinkBox4View.placeInMidXOfSuperView()
        pinkBox4View.placeInTopOfSuperView(offset: 115)
        
        pinkBox5View.placeInRightOfSuperView(offset: -100)
        pinkBox5View.placeInTopOfSuperView(offset: 110)
        
        pinkBox6View.placeInRightOfSuperView(offset: -60)
        pinkBox6View.placeInTopOfSuperView(offset: 105)
        
        pinkBox7View.placeInRightOfSuperView(offset: -20)
        pinkBox7View.placeInTopOfSuperView(offset: 100)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
