//
//  UpgradeManager.swift
//  IAPDemo
//
//  Created by Hesham Abd-Elmegid on 8/18/16.
//  Copyright © 2016 CareerFoundry. All rights reserved.
//

import Foundation

class UpgradeManager: NSObject {
    static let sharedInstance = UpgradeManager()
    
    func hasUpgraded() -> Bool {
        return true
    }
}
