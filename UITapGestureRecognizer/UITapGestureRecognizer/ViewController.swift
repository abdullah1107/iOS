//
//  ViewController.swift
//  UITapGestureRecognizer
//
//  Created by Muhammad Abdullah Al Mamun on 28/4/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    
    @IBOutlet var viewTap: UIView!

    
    var tapGesture = UITapGestureRecognizer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TAP Gesture
        tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.myviewTapped(_:)))
        tapGesture.numberOfTapsRequired = 1
        tapGesture.numberOfTouchesRequired = 1
        viewTap.addGestureRecognizer(tapGesture)
        viewTap.isUserInteractionEnabled = true

       
    }
    
    @objc func myviewTapped(_ sender: UITapGestureRecognizer) {
        
        if self.viewTap.backgroundColor == UIColor.yellow {
            self.viewTap.backgroundColor = UIColor.green
        }else{
            self.viewTap.backgroundColor = UIColor.yellow
        }
    }


}

