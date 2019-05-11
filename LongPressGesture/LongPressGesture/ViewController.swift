//
//  ViewController.swift
//  LongPressGesture
//
//  Created by Muhammad Abdullah Al Mamun on 28/4/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var viewLong: UIView!
    
    var longpressgesture = UILongPressGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //LongGesture
        longpressgesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longpress(_:)))
        //here we using the same class for this reason using self.longpress method if we use another class method then just call ClassName.longpress()
        
        longpressgesture.minimumPressDuration = 1
       
        if self.viewLong.backgroundColor == UIColor.white {
            self.viewLong.backgroundColor = UIColor.green
        }else{
            self.viewLong.backgroundColor = UIColor.white
        }
        
        viewLong.addGestureRecognizer(longpressgesture)

     
    }
    
    
    @objc func longpress(_ sender: UILongPressGestureRecognizer){
        
        
       
        
        
        let alertC = UIAlertController(title: "Long Press", message: "Long press gesture called when you press on view of 1 second duration.", preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (alert) in
        }
        alertC.addAction(ok)
        self.present(alertC, animated: true, completion: nil)    }


}

