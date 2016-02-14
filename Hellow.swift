//
//  Hellow.swift
//  SideOutMenu
//
//  Created by anatoliy.kant on 14.02.16.
//  Copyright © 2016 anatoliy.kant. All rights reserved.
//

import Foundation

class Hellow: UIViewController {
    override func viewDidLoad() {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
}