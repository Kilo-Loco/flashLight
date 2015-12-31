//
//  InterfaceController.swift
//  Watch Flashlight Extension
//
//  Created by Kyle Lee on 12/30/15.
//  Copyright © 2015 Kilo Loco. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var light: WKInterfaceButton!
    
    var lightCounter = 0
    var lightAlpha: CGFloat = 1.0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        self.light.setAlpha(1.0)
    }
    
    @IBAction func lightPressed() {
        if self.lightCounter < 3 {
            self.lightAlpha -= 0.3
            self.light.setAlpha(self.lightAlpha)
            self.lightCounter++
            print(self.lightCounter)
        } else {
            self.light.setAlpha(1.0)
            self.lightCounter = 0
            self.lightAlpha = 1.0
        }
    }
    

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
