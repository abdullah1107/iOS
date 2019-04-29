//
//  ViewController.swift
//  Change UITextfield Placeholder Color
//
//  Created by Muhammad Abdullah Al Mamun on 29/4/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtEmailID: UITextField!
    
    
    @IBOutlet weak var txtPassword: UITextField!
    
    
    var myMutableStringTitle = NSMutableAttributedString()
    let Name  = "Email ID" // PlaceHolderText
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myMutableStringTitle = NSMutableAttributedString(string:Name, attributes: [NSAttributedString.Key.font:UIFont(name: "Georgia", size: 18.0)!]) // Font
        myMutableStringTitle.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range:NSRange(location:0,length:Name.count))    // Color
        
        
        txtEmailID.attributedPlaceholder = myMutableStringTitle
        
        
        txtPassword.attributedPlaceholder = NSAttributedString(string:"Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.green])
        
    }


}

