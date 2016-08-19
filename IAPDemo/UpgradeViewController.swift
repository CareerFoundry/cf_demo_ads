//
//  UpgradeViewController.swift
//  IAPDemo
//
//  Created by Hesham Abd-Elmegid on 8/18/16.
//  Copyright © 2016 CareerFoundry. All rights reserved.
//

import UIKit

class UpgradeViewController: UIViewController {
    
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var upgradeButton: UIButton!
    @IBOutlet weak var restoreButton: UIButton!

    override func viewDidAppear(animated: Bool) {
        UpgradeManager.sharedInstance.priceForUpgrade { (price) in
            self.priceLabel.text = "$\(price)"
            self.upgradeButton.enabled = true
            self.restoreButton.enabled = true
        }
    }

    @IBAction func doneButtonTapped(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func upgradeButtonTapped(sender: AnyObject) {
        UpgradeManager.sharedInstance.upgrade { (succeeded) -> (Void) in
            
        }
    }
    
    @IBAction func restorePurchasesButtonTapped(sender: AnyObject) {
        UpgradeManager.sharedInstance.restorePurchases { (succeeded) -> (Void) in
            
        }
    }
    
}
