//
//  ViewController.swift
//  PinchGesture
//
//  Created by Muhammad Abdullah Al Mamun on 28/4/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewPinch: UIView!
    
    
    var pinchGesture  = UIPinchGestureRecognizer()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(self.pinchedView))
        viewPinch.isUserInteractionEnabled = true
        viewPinch.addGestureRecognizer(pinchGesture)
    }
    
    @objc func pinchedView(sender:UIPinchGestureRecognizer){
        self.view.bringSubviewToFront(viewPinch)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 3.0
    }


}

