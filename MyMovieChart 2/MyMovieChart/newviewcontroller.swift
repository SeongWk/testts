//
//  newviewcontroller.swift
//  MyMovieChart
//
//  Created by seong_wook_lim on 2021/12/24.
//  Copyright © 2021 SQLPRO. All rights reserved.
//

import UIKit
import WebKit
class newviewController: UIViewController
{
    
    @IBOutlet var webweb: WKWebView!
    var mvo:MovieVO!
    
    override func viewDidLoad() {
        let navibar = self.navigationItem
        navibar.title = self.mvo.title
        let url = URL(string: (self.mvo.detail)!)
        let req = URLRequest(url: url!)
        self.webweb.load(req)
    }
}
