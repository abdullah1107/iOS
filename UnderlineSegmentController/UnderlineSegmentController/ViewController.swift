//
//  ViewController.swift
//  UnderlineSegmentController
//
//  Created by Muhammad Abdullah Al Mamun on 22/9/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var sender: UIView!
    
   
    var segmentedControl = UISegmentedControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let items = ["iPhone", "Xaomi", "Samsung", "Asus"]
        
        segmentedControl = UISegmentedControl(items: items)
        
        //segmentedControl.center = self.sender.center
        
        
        
        
        // Add function to handle Value Changed events
     
       segmentedControl.addUnderlineForSelectedSegment()
        segmentedControl.changeUnderlinePosition()
        segmentedControl.addTarget(self, action: #selector(ViewController.segmentedValueChanged(_:)), for: .valueChanged)
        
       self.sender.addSubview(segmentedControl)
        
        
    }
    
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
        
        segmentedControl.changeUnderlinePosition()
        //print("Selected Segment Index is : \(sender.selectedSegmentIndex)")
        switch (sender.selectedSegmentIndex) {
            
        case 0:
            print("iPhone")
        case 1:
            print("Xaomi")
        case 2:
            print("Samsung")
        case 3:
            print("Asus")
        default:
            break;
        }
    }

    
    @IBAction func segmentedControlDidChange(_ sender: UISegmentedControl){
        segmentedControl.changeUnderlinePosition()
         print(sender.selectedSegmentIndex)
        switch (sender.selectedSegmentIndex) {
           
        case 0:
            print("iPhone")
        case 1:
            print("Xaomi")
        default:
            break;
        }
        
        
    }


}




