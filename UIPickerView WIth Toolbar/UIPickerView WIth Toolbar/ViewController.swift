//
//  ViewController.swift
//  UIPickerView WIth Toolbar
//
//  Created by Muhammad Abdullah Al Mamun on 29/4/19.
//  Copyright © 2019 Muhammad Abdullah Al Mamun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {
    
    @IBOutlet weak var txt_pickupdata: UITextField!
    
    var myPickerView : UIPickerView!
    
    var itemArray = ["Bangladesh", "India", "Pakistan", "USA", "UK", "Srilanka"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //only using supper classs
    }
    
    
    
    
    func pickUp(_ textField : UITextField){
        
        // UIPickerView
        self.myPickerView = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.myPickerView.delegate = self
        self.myPickerView.dataSource = self
        self.myPickerView.backgroundColor = UIColor.white
        textField.inputView = self.myPickerView
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
    }
    //MARK:- PickerView Delegate & DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return itemArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return itemArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.txt_pickupdata.text = itemArray[row]
    }
    //MARK:- TextFiled Delegate
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUp(txt_pickupdata)
    }
    
    //MARK:- Button
    @objc func doneClick() {
         txt_pickupdata.resignFirstResponder()
    }
    @objc func cancelClick() {
         txt_pickupdata.resignFirstResponder()
    }
    
  
}

