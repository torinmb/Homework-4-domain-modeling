//
//  main.swift
//  domain-modeling
//
//  Created by blankens on 10/13/15.
//  Copyright © 2015 Adobe. All rights reserved.
//

import Foundation

print("Hello, World!")

var money = Money(amount: 200, currency: .USD)
print("\(money.amount) To CAN : \(money.convert(.CAN))")

var moneyEUR = Money(amount: 400, currency: .EUR)

print("200 USD + 400 EUR \(money.add(moneyEUR))")
print("400 EUR - 200 USD \(moneyEUR.subtract(money))")

var job = Job(title: "Software Engineer", salery: Job.Salary.hourly(50.0))
print("Software Engineer $40/hr calcualte 80hrs: \(job.calculateIncome(80))")
print("Software Engineer $40/hr raise 10%: \(job.raise(0.1) )")
var job2 = Job(title: "Software Engineer", salery: Job.Salary.yearly(103000.0))
print("Software Engineer $100000.0/yr calcualte 80hrs: \(job2.calculateIncome(80))")
print("Software Engineer $100000.0/yr raise 10%: \(job2.raise(0.1) )")

var son = Person(firstName: "lazy", lastName: "son", age: 23, job: nil, spouse: nil)
var mom = Person(firstName: "Dudette", lastName: "Dudeson", age: 43, job: job, spouse: nil)
var dad = Person(firstName: "Dude", lastName: "Dudeson", age: 45, job: job2, spouse: nil)
dad.spouse = mom
mom.spouse = dad
print(mom.toString())
print(dad.toString())
print(son.toString())

let family = Family(members: [son, mom, dad])
print("Household Income: \(family.householdIncome()))")
print("New Child, Family Count \(family.haveChild().count)")
let family2 = Family(members: [Person(firstName: "Under", lastName: "Age", age: 20, job: nil, spouse: nil)])
print("Family of 1 with age < 21 add child: \(family2.haveChild().count)")