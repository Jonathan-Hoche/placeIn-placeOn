//
//  ExampleShorthandViewController.swift
//  JHPlaceUIView-UIViewExtension
//
//  Created by Jonathan Hocks on 08/02/2017.
//  Copyright © 2017 Jonathan Hoche. All rights reserved.
//

import UIKit

class ExampleShorthandViewController: UIViewController {

    @IBOutlet weak var box: UIView!
    
    
    @IBOutlet weak var inTL_Label: UILabel!
    @IBOutlet weak var inTR_Label: UILabel!
    @IBOutlet weak var inBL_Label: UILabel!
    @IBOutlet weak var inBR_Label: UILabel!
    
    @IBOutlet weak var onTL_Label: UILabel!
    @IBOutlet weak var onTR_Label: UILabel!
    @IBOutlet weak var onBL_Label: UILabel!
    @IBOutlet weak var onBR_Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        box.translatesAutoresizingMaskIntoConstraints = true
        inTL_Label.translatesAutoresizingMaskIntoConstraints = true
        inTR_Label.translatesAutoresizingMaskIntoConstraints = true
        inBL_Label.translatesAutoresizingMaskIntoConstraints = true
        inBR_Label.translatesAutoresizingMaskIntoConstraints = true
        onTL_Label.translatesAutoresizingMaskIntoConstraints = true
        onTR_Label.translatesAutoresizingMaskIntoConstraints = true
        onBL_Label.translatesAutoresizingMaskIntoConstraints = true
        onBR_Label.translatesAutoresizingMaskIntoConstraints = true

        inTL_Label.placeInTopLeft(of: box)
        inTR_Label.placeInTopRight(of: box)
        inBL_Label.placeInBottomLeft(of: box)
        inBR_Label.placeInBottomRight(of: box)
        
        onTL_Label.placeOnTopLeft(of: box)
        onTR_Label.placeOnTopRight(of: box)
        onBL_Label.placeOnBottomLeft(of: box)
        onBR_Label.placeOnBottomRight(of: box)
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
