//
//  ViewController.swift
//  SegmentController
// Programmicatacally adding  UISegmentControl
//  Created by Muhammad Abdullah Al Mamun on 25/3/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class SegmantViewController: UIViewController {
    
    var segmentedControl = UISegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let items = ["iPhone", "Xaomi", "Samsung", "Asus"]

        segmentedControl = UISegmentedControl(items: items)

        segmentedControl.center = self.view.center

        segmentedControl.selectedSegmentIndex = 0

        // Add function to handle Value Changed events
        segmentedControl.addTarget(self, action: #selector(SegmantViewController.segmentedValueChanged(_:)), for: .valueChanged)
        segmentedControl.layer.cornerRadius = 5.0
        segmentedControl.backgroundColor = .white
        segmentedControl.tintColor = .blue

         self.view.addSubview(segmentedControl)
        


//        let xPostion:CGFloat = 10
//        let yPostion:CGFloat = 150
//        let elementWidth:CGFloat = 300
//        let elementHeight:CGFloat = 30
//
//        mySegmentedControl.frame = CGRect(x: xPostion, y: yPostion, width: elementWidth, height: elementHeight)
        
        

    }
    
    @objc func segmentedValueChanged(_ sender:UISegmentedControl!)
    {
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

    

    
//    @objc func segmentedValueChanged(_sender:UISegmentedControl!){
//
//        switch (_sender.selectedSegmentIndex) {
//
//        case 0:
//            print("iPhone")
//        case 1:
//            print("Xaomi")
//        case 2:
//            print("Samsung")
//        case 3:
//            print("Asus")
//        default:
//            break;
//        }
//    }


}




