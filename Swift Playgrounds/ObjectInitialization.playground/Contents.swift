//: Playground - noun: a place where people can play

import UIKit

class Person {
    let name: String
    let age: Int
    
    //added the throws key word to return error if initilization fails
    init?(dict: [String: AnyObject]) throws {
        guard let name = dict["name"] as? String, let age = dict["age"] as? Int else {
            throw PersonError.InvalidData
        }
        
        self.name = name
        self.age = age
    }
}

enum PersonError: ErrorType { case InvalidData }


// Initializer Delegation

struct Point {
    var x: Int = 0
    var y: Int = 0
}

struct Size {
    var width: Int = 0
    var height: Int = 0
}

struct Rectangle {
    var origin = Point()
    var size = Size()
    
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(x: Int, y: Int, height: Int, width: Int) {
        let origin = Point(x: x, y: y)
        let size = Size(width: width, height: height)
        
        self.init(origin: origin, size: size)
        
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - size.width/2
        let originY = center.y - size.height/2
        let origin = Point(x: originX, y: originY)
        
        self.init(origin: origin, size: size)
    }
}

//Designated and Convenience Initializers

class Vehicle {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        self.init(name: "Unnamed")
    }
}

class Car: Vehicle {
    let numberOfDoors: Int
    
    init(name: String, numberOfDoors: Int){
        self.numberOfDoors = numberOfDoors
        
        super.init(name: name)
        
    }
    
    convenience override init(name: String){
        self.init(name: name, numberOfDoors: 4)
    }
    
    convenience init() {
        self.init(name: "Unnamed")
    }
}

// Required Initializers

class SomeClass {
    
    required init() {
        //do the real work
    }
    
}

class AnotherClass: SomeClass {
    
    init(test: String) {
        
    }
    
    required init() {
        fatalError("init() has not been implemented")
    }
    
}