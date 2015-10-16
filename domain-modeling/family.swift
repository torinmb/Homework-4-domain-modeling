//
//  family.swift
//  domain-modeling
//
//  Created by blankens on 10/14/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation

class Family {
    var members : [Person]
    
    init(members: [Person]) {
        self.members = members
    }
    
    func householdIncome() -> Double {
        var total = 0.0
        
        for person in members {
            if let job = person.job {
                switch job.salary {
                case .yearly(let amount):
                    total += amount
                case .hourly(let amount):
                    total += amount
                }
            }
        }
        return total
//        return self.members.reduce(0.0, combine: {$0.job?.salary + ($1.job?.salary)})
    }
    
    func haveChild() -> [Person] {
        for person in members {
            if person.age >= 21 {
                members.append(Person(firstName: "", lastName: "", age: 0, job: nil, spouse: nil))
            return members
            }
        }
        return members
    }
}