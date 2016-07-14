protocol FullyNameable {
    var fullName: String { get }
}

struct User: FullyNameable {
    var fullName: String
}

let user = User(fullName: "Guido Medina")

struct Friend: FullyNameable {
    let firstName: String
    let middleName: String
    let lastName: String
    
    var fullName: String {
        return "\(firstName) \(middleName) \(lastName)"
    }
}

let friend = Friend(firstName: "Guido", middleName: "Javier", lastName: "Medina")

friend.fullName


/* Code Challenge - Declaring Protocal
 
 Declare a protocol named UserType. The protocol defines two requirements: a gettable property named name of type String, and a gettable/settable property named age of type Int
 Hint: To declare a property as gettable, add { get } after the type. For settable - { set } and combine both to get a gettable and settable property.
 
 */

protocol UserType {
    var name: String { get }
    var age: Int { get set }
}

////Code done

/* Code Challenge 2 - Conforming to a protocol
 
 In the editor the protocol you created, UserType, is provided along with an empty struct. For this task, Person needs to conform to UserType.
 After you've written code to achieve this task, create an instance of Person and assign it to a constant named somePerson.
*/

struct Person: UserType {
    var name: String
    var age: Int
}


let somePerson = Person(name: "Guido", age: 39)

print(somePerson.name)

//end challenge

import Foundation

protocol Payable {
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int)
}

enum EmployeeType {
    case Manager
    case NotManager
}

class Employee {
    
    let name: String
    let address: String
    let startDate: NSDate
    let type: EmployeeType
    
    var department: String?
    var reportsTo: String?
    
    init(fullName: String, employeeAddress: String, employeeStartDate: NSDate, employeeType: EmployeeType) {
        self.name = fullName
        self.address = employeeAddress
        self.startDate = employeeStartDate
        self.type = employeeType
        
    }
}

func payEmployee (employee: Payable) {
    let paycheck = employee.pay()
}

class HourlyEmployee: Employee, Payable {
    var hourlyWage: Double = 15.00
    var hoursWorked: Double = 10
    let availableVacation = 0
    
    func pay() -> (basePay: Double, benefits: Double, deductions: Double, vacationTime: Int) {
        return (hourlyWage * hoursWorked, 0, 0, availableVacation)
    }
}

let hourlyEmployee = HourlyEmployee(fullName: "Guido", employeeAddress: "none", employeeStartDate: NSDate(), employeeType: .NotManager)

payEmployee(hourlyEmployee)

let employee = Employee(fullName: "Guido", employeeAddress: "none", employeeStartDate: NSDate(), employeeType: .Manager)

/*
 Code Challenge - 
 
 In the editor below, I've declared a class, WifiLamp, that represents an interface to one of those Internet of Things lamps. The class models state that determines whether the lamp is on or off and a color, represented by the Color enum.
 For the first step, declare a protocol named ColorSwitchable. The protocol has a single requirement: a method named switchColor that takes a value of Color as an argument. For the sake of this challenge, make sure your method parameter is named color.
 
 For this task, make WifiLamp adopt the ColorSwitchable protocol. In the implementation of the method, simply set the color of the lamp to the new color.
 */
//Declare Protocol here
//First Part
protocol ColorSwitchable {
    func switchColor(color: Color)
}

enum LightState {
    case On, Off
}

enum Color {
    case RGB(Double, Double, Double, Double)
    case HSB(Double, Double, Double, Double)
}

class WifiLamp: ColorSwitchable {
    let state: LightState
    var color: Color
    
    init() {
        self.state = .On
        self.color = .RGB(0,0,0,0)
    }
    //Second part of challenge
    func switchColor(color: Color) {
        self.color = color
    }
}

////////////////////////

protocol Blendable {
    func blend()
}

class Fruit: Blendable {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func blend() {
        print("Im mush")
    }
}

class Dairy {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Cheese: Dairy {}

class Milk: Dairy, Blendable {
    func blend() {
        print("I havent changed, im still milk")
    }
}

func makeSmoothie(ingredients: [Blendable]) {
    for ingredient in ingredients {
        ingredient.blend()
    }
}

let strawberry = Fruit(name: "Strawberry")
let cheddar = Cheese(name: "Cheddar")
let chocolateMilk = Milk(name: "Chocolate")

let ingredients: [Blendable] = [strawberry, chocolateMilk]

makeSmoothie(ingredients)


//////////////////////////////////////////////////










