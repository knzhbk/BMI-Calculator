//
//  Example.swift
//  BMI Calculator
//
//  Created by Sultan Abilda on 3/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation


class ParentClass {
    func doSomething() {
        print("I'm parent")
    }
}

class ChildClass: ParentClass {
    override func doSomething() {
        print("I'm child")
    }
}

class ChildWithoutMethodClass: ParentClass {}

class ExtClass: ParentClass {
    override func doSomething() {
        super.doSomething()
    }
}

var parent = ParentClass()
parent.doSomething()    // "I'm parent"


var child = ChildClass();
child.doSomething()     // "I'm child"

var childWithOutMethod = ChildWithoutMethodClass()
childWithOutMethod.doSomething()    // "I'm parent"

var ext = ExtClass();
ext.doSomething()       // "I'm parent"
                        // "I'm extention"
