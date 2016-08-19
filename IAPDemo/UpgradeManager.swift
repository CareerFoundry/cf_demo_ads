//
//  UpgradeManager.swift
//  IAPDemo
//
//  Created by Hesham Abd-Elmegid on 8/18/16.
//  Copyright © 2016 CareerFoundry. All rights reserved.
//

import Foundation
import StoreKit

class UpgradeManager: NSObject, SKProductsRequestDelegate, SKPaymentTransactionObserver {
    typealias SuccessHandler = (succeeded: Bool) -> (Void)
    
    static let sharedInstance = UpgradeManager()
    var upgradeCompletionHandler: SuccessHandler?
    var restoreCompletionHandler: SuccessHandler?
    var priceCompletionHandler: ((price: Float) -> Void)?
    
    func hasUpgraded() -> Bool {
        return false
    }
    
    func upgrade(success: SuccessHandler) {
        
    }
    
    func restorePurchases(success: SuccessHandler) {
        
    }
    
    func priceForUpgrade(success: (price: Float) -> Void) {
        success(price: 0.0)
    }
    
    // MARK: SKPaymentTransactionObserver
    
    func paymentQueue(queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        
    }
    
    // MARK: SKProductsRequestDelegate
    
    func productsRequest(request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        
    }
}
