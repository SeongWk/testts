//
//  ViewController.swift
//  valueCarry
//
//  Created by seong_wook_lim on 2021/12/09.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var emails: UITextField!
    @IBOutlet var switchs: UISwitch!
    @IBOutlet var steppper: UIStepper!
    
    @IBOutlet var UpdateText: UILabel!
    @IBOutlet var UpdateText2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onswitch(_ sender: UISwitch) {
        if(sender.isOn == true)
        {
            self.UpdateText.text = "갱신함"
        }else{
            self.UpdateText.text = "갱신못함"
        }
    }
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.UpdateText2.text = "\(value)분마다"
    }
    
    //@IBAction func go(_ sender: Any) {
       // guard let rvc = self.storyboard?.instantiateViewController(withIdentifier: "RVC") as? ResultViewController else
        //{
            //return
            
       // }
        //rvc.paramemail = self.emails.text!
        //rvc.paramUpdate = self.switchs.isOn
        //rvc.paramInterval = self.steppper.value
       // self.navigationController?.pushViewController(rvc, animated: true)
        
    //}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination
        guard let rvc = dest as? ResultViewController else
        {
            return
        }
        rvc.paramemail = self.emails.text!
        rvc.paramUpdate = self.switchs.isOn
        rvc.paramInterval = self.steppper.value
    }

    @IBAction func onperformSegue(_ sender: Any) {
        self.performSegue(withIdentifier: "ManualSubmit", sender: self)
    }
    
}

