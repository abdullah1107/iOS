//
//  ViewController.swift
//  Slider
//
//  Created by Muhammad Abdullah Al Mamun on 24/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class StoryboardSliderViewController: UIViewController {
    
    
    @IBOutlet weak var sliderLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func sliderAction(_ sender: UISlider) {
      sliderLabel.text = String(Int(sender.value))
    }
    
}

