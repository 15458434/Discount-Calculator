//
//  CalculationModel.swift
//  Discount
//
//  Created by Mark Cornelisse on 31/01/2018.
//  Copyright © 2018 Mark Cornelisse. All rights reserved.
//

import Cocoa

@objc class CalculationModel: NSObject {
    @objc dynamic var originalPrice: NSNumber?
    @objc dynamic var discountPercentage: NSNumber?
    @objc dynamic var discountPrice: NSNumber?
    
    @IBAction func changeOfPrice(_ sender: Any) {
        calcDiscountPrice()
    }
    
    @IBAction func changeOfPercentage(_ sender: Any) {
        calcDiscountPrice()
    }
    
    func calcDiscountPrice() {
        let price = self.originalPrice ?? 0 as NSNumber
        let discountPercentage = self.discountPercentage ?? 0 as NSNumber
        self.discountPrice = discountPrice(from: price, and: discountPercentage)
    }
    
    func discountPrice(from originalPrice: NSNumber, and discountPercentage: NSNumber) -> NSNumber {
        let price = originalPrice.decimalValue
        let percantage = discountPercentage.decimalValue
        return (price - (price * percantage)) as NSNumber
    }
    
    // MARK: NSObject
}
