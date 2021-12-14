//
//  ViewController.swift
//  Msgalert
//
//  Created by seong_wook_lim on 2021/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var resultlbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        
    }
    @IBAction func alertbtn(_ sender: Any) {
        let alert  = UIAlertController(title: "CHOICE", message: "pick one", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        {
            (_) in self.resultlbl.text = "Cancel"
        }
        let ok = UIAlertAction(title: "Check", style: .default)
        {
            (_) in self.resultlbl.text = "Check"
        }
        let exec = UIAlertAction(title: "Continue", style: .destructive)
        {
            (_) in self.resultlbl.text = "Continue"
        }
        let stop = UIAlertAction(title: "break", style: .destructive)
        {
            (_) in self.resultlbl.text = "break"
        }
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        self.present(alert,animated: false)
    }
    @IBAction func loginbtn(_ sender: Any) {
        let alert2 = UIAlertController(title: "log in", message: "please input your ID and password", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        let ok2 = UIAlertAction(title: "Confirm", style: .default)
        {
            (_) in
            if let tf = alert2.textFields?[0]
            {
                print("This is \(tf.text)")
            }else{
                print("enter again")
            }
        }
        alert2.addAction(cancel)
        alert2.addAction(ok2)
        alert2.addTextField(configurationHandler: {
            (tf) in
            tf.placeholder = "password"
            tf.isSecureTextEntry = true
        })
        self.present(alert2, animated: false)
    }
    
    @IBAction func userbtn(_ sender: Any) {
        let alert3 = UIAlertController(title: "log in", message: "please typing ID and Password", preferredStyle: .alert)
        let cancel2 = UIAlertAction(title: "Cancel", style: .cancel)
        let ok4 = UIAlertAction(title: "Confrim", style: .default)
        {
            (_) in
            let loginid = alert3.textFields?[0].text
            let loginpw = alert3.textFields?[1].text
            if loginid == "qwer" && loginpw == "1234"
            {
                self.resultlbl.text = "success"
            }else
            {
                self.resultlbl.text = "fail"
            }
        }
        alert3.addAction(cancel2)
        alert3.addAction(ok4)
        alert3.addTextField(configurationHandler: {(tf) in tf.placeholder = "ID"
            tf.isSecureTextEntry = false})
        alert3.addTextField(configurationHandler:{(tf) in tf.placeholder = "Password"
            tf.isSecureTextEntry = true})
        self.present(alert3,animated: false)
    }
}

