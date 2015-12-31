//
//  ViewController.swift
//  Flashlight
//
//  Created by Kyle Lee on 12/30/15.
//  Copyright © 2015 Kilo Loco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var light: UIButton!
    
    var lightCounter = 0
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.light.alpha = 1.0
    }

    @IBAction func lightPressed(sender: UIButton!) {
        if self.lightCounter < 3 {
            self.light.alpha -= 0.3
            self.lightCounter++
            print(self.lightCounter)
        } else {
            self.light.alpha = 1.0
            self.lightCounter = 0
        }
    }
}

