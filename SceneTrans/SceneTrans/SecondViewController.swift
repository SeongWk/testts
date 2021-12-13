//
//  SecondViewController.swift
//  SceneTrans
//
//  Created by seong_wook_lim on 2021/12/07.
//

import UIKit

class SecondViewController: UIViewController{
    
    @IBAction func backbtn(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
