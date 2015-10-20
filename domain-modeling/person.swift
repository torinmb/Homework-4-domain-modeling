//
//  person.swift
//  domain-modeling
//
//  Created by blankens on 10/13/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation


class Person: CustomStringConvertible {
    var firstName: String
    var lastName: String
    var age: Int
    var job: Job?
    var spouse: Person?
    
    var description: String {
        return "\(self.toString())"
    }
    
    init(firstName: String, lastName: String, age: Int, job: Job?, spouse: Person?) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        
        if age >= 18 {
            self.spouse = spouse
            self.job = job
        } else if age >= 16 {
            self.job = job
        } else {
            self.job = nil
            self.spouse = nil
        }
    }
    
    func toString() {
        print("First Name: \(firstName) \nLast Name: \(lastName) \nAge: \(age)")
        if self.job != nil {
            print("Job: \(job!.title), Salery: \(job!.salary)")
        } else {
            print("Searching for a job!")
        }
        if self.spouse != nil {
            print("Spouse: \(spouse!.firstName)")
        } else {
            print("Single")
        }
        
    }
}