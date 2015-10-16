//
//  money.swift
//  domain-modeling
//
//  Created by blankens on 10/13/15.
//  Copyright © 2015 Adobe. All rights reserved.

import Foundation




struct Money {
    
    enum Currency {
        case USD
        case GBP
        case EUR
        case CAN
    }
    
    var amount : Double
    
    var currency : Currency
    
    init(amount: Double, currency: Currency) {
        self.currency = currency
        self.amount = amount
    }
    
    //takes a new currency and coverts the
    func convert(newCurrency: Currency) -> Double {
        switch self.currency {
        case .USD:
            switch newCurrency {
            case .GBP:
                return self.amount * 0.5
            case .EUR:
                return self.amount * 1.5
            case .CAN:
                return self.amount * 1.25
            default:
                break
            }
        case .GBP:
            switch newCurrency {
            case .CAN:
                return self.amount * 2.5
            case .EUR:
                return self.amount * 3
            default:
                break
            }
        case .EUR:
            switch self.currency {
            case .CAN:
                return self.amount * (5.0/6.0)
            default:
                break
            }
        case .CAN:
            switch self.currency {
            case .USD:
                return self.amount * 1.25
            default:
                break
            }
        }
        return self.amount
    }
    
    func add(money: Money) -> Double {
        let sum = money.convert(self.currency)
        return self.amount + sum
    }
    
    func subtract(money: Money) -> Double {
        let sum = money.convert(self.currency)
        return self.amount - sum
    }
    
}


