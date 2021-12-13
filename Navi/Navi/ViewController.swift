//
//  ViewController.swift
//  Navi
//
//  Created by seong_wook_lim on 2021/12/13.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func move(_ sender: Any) {
        guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC")else{
            return
        }
        self.navigationController?.pushViewController(uvc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

