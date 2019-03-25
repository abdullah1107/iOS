//
//  ProgrammaticallySliderViewController.swift
//  Slider
//
//  Created by Muhammad Abdullah Al Mamun on 25/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ProgrammaticallySliderViewController: UIViewController {

    let slider = UISlider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.frame = CGRect(x:0, y:0, width:250, height:35)
        slider.center = self.view.center
        
        slider.minimumTrackTintColor = .green
        slider.maximumTrackTintColor = .red
        slider.thumbTintColor = .black
        
        slider.maximumValue = 100
        slider.minimumValue = 0
        slider.setValue(50, animated: false)
        
        
        slider.addTarget(self, action: #selector(ProgrammaticallySliderViewController.changeVlaue(_:)), for: .valueChanged)
        
        self.view.addSubview(slider)
        

        
    }
    
    @objc func changeVlaue(_ sender: UISlider) {
        print("value is" , Int(sender.value));
    }
    

 

}
