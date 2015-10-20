//
//  job.swift
//  domain-modeling
//
//  Created by blankens on 10/13/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation

struct Job : CustomStringConvertible {
    var title: String
    var salary: Salary
    
    enum Salary {
        case hourly(Double)
        case yearly(Double)
    }
    
    init(title:String, salery: Salary) {
        self.title = title
        self.salary = salery
    }
    
    var description: String {
        return "Title: \(self.title) Salary: \(self.salary)"
    }
    
    func calculateIncome(hours: Double) -> Double{
        switch self.salary {
        case let .hourly(salery):
            return salery * hours
        case let .yearly(salery):
            return salery
        }
    }
    
    mutating func raise(percentage: Double) -> Double{
        switch self.salary {
        case .hourly(let amount):
            let total = amount * (1.0 + percentage)
            self.salary = Salary.hourly(total)
            return total
        case .yearly(let amount):
            let total = amount * (1.0 + percentage)
            self.salary = Salary.yearly(total)
            return total
        }
    }
}