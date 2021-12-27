//
//  NewSegue.swift
//  CustomSegue
//
//  Created by seong_wook_lim on 2021/12/08.
//

import UIKit

class NewSegue: UIStoryboardSegue
{
    override func perform() {
        let src = self.source
        let destsrc = self.destination
        UIView.transition(from: src.view, to: destsrc.view, duration: 2, options: .transitionCurlDown)
    }
}
