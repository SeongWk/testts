//
//  ViewController.swift
//  submitvalue-back to home
//
//  Created by seong_wook_lim on 2021/12/10.
//

import UIKit

class ViewController: UIViewController {

    var paramEmail: String?
    var paramupdate: Bool?
    var paramInterval: Double?
    
    
    @IBOutlet var resultinterval: UILabel!
    @IBOutlet var resultupdate: UILabel!
    @IBOutlet var resultemail: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        //if let email = paramEmail{
            //resultemail.text = email
        //}
        //if let update = paramupdate{
            //resultupdate.text = update==true ? "자동갱신":"갱신 못함"
        //}
        //if let interval = paramInterval{
           // resultinterval.text = "\(Int(interval))분 마다"
        //}
        let ad = UIApplication.shared.delegate as? AppDelegate
        if let email = ad?.paramEmail{
            resultemail.text = email
        }
        if let update = ad?.paramUpdate{
            resultupdate.text = update == true ? "ok" : "not ok"
        }
        if let interval = ad?.paramInterval{
            resultinterval.text = "\(Int(interval))분 마다"
        }
        
        
    }
    
    


}

