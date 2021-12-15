//
//  ViewController.swift
//  textfields
//
//  Created by seong_wook_lim on 2021/12/14.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet var tf: UITextField!
    override func viewDidLoad() {
        
        self.tf.placeholder = "insert value"
        self.tf.keyboardType = UIKeyboardType.alphabet
        self.tf.keyboardAppearance = UIKeyboardAppearance.dark
        self.tf.returnKeyType = UIReturnKeyType.join
        self.tf.enablesReturnKeyAutomatically = true
        self.tf.borderStyle = UITextField.BorderStyle.line
        self.tf.backgroundColor = UIColor(white: 0.87, alpha: 1.0)
        self.tf.contentVerticalAlignment = .center
        self.tf.layer.borderColor = UIColor.darkGray.cgColor
        self.tf.layer.borderWidth = 2.0
       }

    @IBAction func end2(_ sender: Any)
    {self.tf.resignFirstResponder()}
    @IBAction func std2(_ sender: Any)
    {self.tf.becomeFirstResponder()}
    
    
}

