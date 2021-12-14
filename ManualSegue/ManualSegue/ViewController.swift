//
//  ViewController.swift
//  ManualSegue
//
//  Created by seong_wook_lim on 2021/12/07.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func wind(_ segue: UIStoryboardSegue) {
        self.performSegue(withIdentifier: "ManualWind", sender: self)
        
    }
    
}

