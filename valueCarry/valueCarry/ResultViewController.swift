//
//  ResultViewController.swift
//  valueCarry
//
//  Created by seong_wook_lim on 2021/12/09.
//

import UIKit

class ResultViewController: UIViewController
{
    
    var paramemail: String = ""
    var paramUpdate: Bool = false
    var paramInterval: Double = 0
    
    @IBOutlet var resultemail: UILabel!
    @IBOutlet var resultupdate: UILabel!
    @IBOutlet var resultlabel: UILabel!
    
    override func viewDidLoad() {
        self.resultemail.text = paramemail
        self.resultupdate.text = (self.paramUpdate == true ? "자동갱신": "자동갱신 안함")
        self.resultlabel.text = "\(Int(paramInterval))"
    }
    //@IBAction func backs(_ sender: Any)
    //{
        //self.navigationController?.popViewController(animated: true)
    //}
}
