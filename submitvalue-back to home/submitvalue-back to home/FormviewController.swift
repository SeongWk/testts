//
//  FormviewController.swift
//  submitvalue-back to home
//
//  Created by seong_wook_lim on 2021/12/10.
//

import UIKit

class FormviewController: UIViewController
{
    
    @IBOutlet var email: UITextField!
    @IBOutlet var isUpdate: UISwitch!
    @IBOutlet var interval: UIStepper!
    
   
    @IBAction func sumbit2(_ sender: Any) {
        //let preVC = self.presentingViewController
        //guard let vc = preVC as? ViewController else
        //{
            //return
        //}
        //vc.paramEmail = self.email.text
        //vc.paramupdate = self.isUpdate.isOn
        //vc.paramInterval = self.interval.value
        let ad = UIApplication.shared.delegate as? AppDelegate
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
