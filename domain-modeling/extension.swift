//
//  extension.swift
//  domain-modeling
//
//  Created by blankens on 10/18/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation


extension Double {
    var USD: Money { return Money(amount: self, currency: .USD) }
    var EUR: Money { return Money(amount: self, currency: .EUR) }
    var GBP: Money { return Money(amount: self, currency: .GBP) }
    var CAN: Money { return Money(amount: self, currency: .CAN) }
}