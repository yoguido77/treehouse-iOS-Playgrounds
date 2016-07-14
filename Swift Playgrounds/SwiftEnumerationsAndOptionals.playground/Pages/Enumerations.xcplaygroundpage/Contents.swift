//: Playground - noun: a place where people can play

let week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

func weekdayOrWeekend(day: String) -> String {
    switch day {
        case "Saturday", "Sunday": return "Weekend"
        case "Monday", "Tuesday", "Wednesday", "Thursday", "Friday": return "Weekday"
    default: return "This isn't a valid day in the Western calendar"
    }
}

func muteNotifications(day: String) -> Bool {
    if day == "Weekend" {
        return true
    } else {
        return false
    }
}

let result = weekdayOrWeekend("Sartur")
let isMuted = muteNotifications(result)



enum Day: Int {
    case Monday = 1
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

Day.Monday.rawValue
Day.Friday.rawValue

enum DayType {
    case Weekday
    case Weekend
}

func weekendOrWeekend(day: Day) -> DayType {
    switch day {
    case .Saturday, .Sunday: return .Weekend
    default: return .Weekday
    }
}

func muteNotifications(dayType: DayType) -> Bool {
    switch dayType {
    case .Weekend: return true
    case .Weekday: return false
    }
}


let dayType = weekendOrWeekend(.Saturday)
let isWeekend = muteNotifications(dayType)



/*
 Challenge Task 1 of 1
 
 Let's get in some practice creating a basic enum. Declare an enum named Direction with the members Left, Right, Up, Down.
*/

enum Direction {
    case Left
    case Right
    case Up
    case Down
}

/* 
 
 Challenge Task 1 of 1
 
 In the editor below you have two objects - classes named Point and Robot. The Robot stores its location as a point instance and contains a move function.
 
 The task of this challenge is to complete the implementation for move. Move takes a parameter of type Direction which is an enumeration listing the possible movement directions.
 
 When you tell the robot to move up (by specifying Direction.Up as the argument), the y coordinate should increase by 1. Similarly moving down means the y coordinate decreases by 1, moving right means the x coordinate increases by 1 and finally left means x decreases by 1.
*/

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}

/*enum Direction {
    case Left
    case Right
    case Up
    case Down
}


class Robot {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: Direction) {
        // Enter your code below
        switch direction {
        case Direction.Left:
            location.x -= 1
        case Direction.Right:
            location.x += 1
        case Direction.Up:
            location.y += 1
        case Direction.Down:
            location.y -= 1
        }
    }
}

*/

// Color Objects
import UIKit


enum ColorComponents {
    case RGB(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    case HSB(CGFloat, CGFloat, CGFloat, CGFloat)
    
    func color() -> UIColor {
        switch self {
        case .RGB(let redValue, let greenValue, let blueValue, let alphaValue):
            return UIColor(red: redValue/255.0, green: greenValue/255.0, blue: blueValue/255.0, alpha: alphaValue)
        case .HSB(let hueValue, let saturationValue, let brightnessValue, let alphaValue):
            return UIColor(hue: hueValue/360.0, saturation: saturationValue/100.0, brightness: brightnessValue/100.0, alpha: alphaValue)
        }
    }
}

ColorComponents.RGB(red: 61.0, green: 120.0, blue: 198.0, alpha: 1.0).color()


/*
 Challenge Task 1 of 1
 
 For this task, let's create a enum named MobilePhone. The enum will have four members: iPhone, Android, Blackberry and WindowsPhone.
 
 Each of these members should have a String value as its associated value.
 
 Once you have an enum declared, assign the value of the iPhone member with an associated value of "6S" to a constant named iPhone
*/

enum MobilePhone {
    case iPhone(String)
    case Android(String)
    case Blackberry(String)
    case WindowsPhone(String)
}

let iPhone = MobilePhone.iPhone("6S")

///end my code

/*
 Challenge Task 1 of 2
 
 In the editor you've been provided with two files buttons.swift that contains some source code for you to use and enums.swift where you will be writing code.
 
 Let's start simple. To a constant named done assign an enum value of type Button with the member Done. This member takes an associated value; assign it the string "Done".
 
 Challenge Task 2 of 2
 
 To the button enum, add a method named toUIBarButtonItem that returns an instance of UIBarButtonItem configured properly.
 
 In the buttons.swift file there is a basic implementation of UIBarButtonItem. You can create buttons with three different styles and titles.
 
 Using the associated values as titles for the button, return a button with style UIBarButtonStyle.Done for the Done member of the Button enum. Similarly for the Edit member, return a UIBarButtonItem instance with the style set to UIBarButtonStyle.Plain.
 
 In both cases you can pass nil for target and action. Once you have a method, call it on the value we created in the previous task and assign it to a constant named doneButton.
 
 ////Explantion of why code works, better instructions
 
 You need to create an instance method called toUIBarButtonItem(). The method will be associated with the Button class, because it is called on an instance of Button. This method has to return a UIBarButtonItem.
 
 What you want to do is create a switch statement inside of this method (function), and switch on self. In this case, self is referring to the specific instance. Remember, this is an instance method so it will be called on an instance of the Button type. Here, self refers to whatever instance it is being called on.
 
 You then want to create case statements to match for all the Button enum's members. This would be Done and Edit.
 
 For each of those cases, you need to return an instance of UIBarButtonItem, using its initializer method. This initializer takes 4 arguments. For target and action you can pass in nil. For the style you have to use .Done for the Done case and .Plain for the Edit case. These arguments are specified in the directions.
 
 For the title, you want to extract the associated value from the instance you are switching on. You can do this by assigning it to a constant. You can then pass that constant in for the title argument.
 
 Now you have your instance method set up, you just need to call it on the instance of Button you created earlier (done) and assign the returned UIBarButtonItem to a constant called doneButton.
 

 
 
 */
//THis code provide by challenge:
import Foundation

enum UIBarButtonStyle {
    case Done
    case Plain
    case Bordered
}

class UIBarButtonItem {
    
    var title: String?
    let style: UIBarButtonStyle
    var target: AnyObject?
    var action: Selector
    
    init(title: String?, style: UIBarButtonStyle, target: AnyObject?, action: Selector) {
        self.title = title
        self.style = style
        self.target = target
        self.action = action
    }
}
//end code provided

enum Button {
    case Done(String)
    case Edit(String)
    
    
    func toUIBarButtonItem() -> UIBarButtonItem {
        switch self {
                   //associated values
        case .Done(let title):
            return UIBarButtonItem(title: title, style: UIBarButtonStyle.Done, target: nil, action: nil)
        case .Edit(let title):
            return UIBarButtonItem(title: title, style: UIBarButtonStyle.Plain, target: nil, action: nil)
        }
    }
}

let done = Button.Done("Done")
let doneButton = done.toUIBarButtonItem()

/// End my code.....

///Raw Values

enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.10
    case Quarter = 0.25
}

let coins: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter]

func totalValue(coins: [Coin]) -> Double {
    var total: Double = 0
    for coin in coins {
       total += coin.rawValue
        }
        return total
    }

totalValue(coins)

enum HTTPMethod: String {
    case POST, GET, PUT, DELETE
}

HTTPMethod.GET.rawValue

enum HTTPStatusCodes: Int {
    case Continue = 100
    case Success = 200
    case Unauthorized = 401
    case Forbidden = 403
    case NotFound = 404
}

let statusCode = 200
if let httpCode = HTTPStatusCodes(rawValue: statusCode) {
    print(httpCode)
}

/* Code Challenge
 
 Let's get in some practice creating enums with raw values. Declare an enum named Compass with a raw value of type Int.
 
 Give the enum 4 members: North, South, East and West and assign them default raw values.
 
 Assign the enum value South of enum Compass to a constant named direction, by using a raw value with Compass' initializer method.
 */


enum Compass: Int {
    case North = 1
    case South = 2
    case East = 3
    case West = 4
}

let direction = Compass(rawValue: 2)

//End Challenge




