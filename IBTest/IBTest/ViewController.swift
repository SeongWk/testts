//
//  ViewController.swift
//  IBTest
//
//  Created by seong_wook_lim on 2021/12/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var uiTitle1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view.
    }
    @IBOutlet var uiTitle2: UILabel!
   
    @IBOutlet var uiTitle3: UILabel!
    @IBOutlet var uiTitle4: UILabel!
    
    @IBOutlet var uiTitle5: UILabel!
    @IBAction func clickbtn4(_ sender: Any)
    {
        self.uiTitle4.text = "btn4 click"
        
    }
    @IBAction func clickbtn5(_ sender: Any) {
        self.uiTitle5.text = "btn5 click"
    }
    @IBAction func clickbtn3(_ sender: Any) {
        self.uiTitle3.text = "btn3 click"
        
    }
    @IBAction func clickbtn2(_ sender: Any) {
        self.uiTitle2.text = "btn2 click"
    }
    @IBAction func clickbtn1(_ sender: Any) {
        self.uiTitle1.text = "btn1 click"
    }
    
}

