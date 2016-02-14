//
//  ViewController.swift
//  SideOutMenu
//
//  Created by anatoliy.kant on 14.02.16.
//  Copyright © 2016 anatoliy.kant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var Open: UIBarButtonItem!
    
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        //открытие бокового меня свайпом в право (нет необходимости нажимать клавишу Open)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        if varView == 0 {
            Label.text = "Strings"
        }
        else {
            Label.text = "Others"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

