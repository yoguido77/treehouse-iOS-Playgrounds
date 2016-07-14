let x1 = 0
let y1 = 0

// created a tuple to return multiple values from a function
let coordinate1: (x: Int, y: Int) = (0, 0)
coordinate1.x

//A structure can add stored properties, creates custom data types
struct Point {
    let x: Int
    let y: Int
    
    //sets up object ready for use, must have initial value
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    func surroundingPoints(withRange range: Int = 1) -> [Point] {
        var results: [Point] = []
        for xCoord in (x-range)...(x+range) {
            for YCoord in (y-range)...(y+range) {
                let coordinatePoint = Point(x: xCoord, y: YCoord)
                results.append(coordinatePoint)
            }
        }
        return results
    }
}

//Instance of the above struct
let coordinatePoint = Point(x: 2, y:2)
coordinatePoint.surroundingPoints()

class Enemy {
    var life: Int = 2
    let position: Point
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    
    }
    
    func decreaseHealth(factor: Int) {
        life -= factor
    }
}


class Tower {
    let position: Point
    var range: Int = 1
    var strength: Int = 1
    
    init(x: Int, y: Int) {
        self.position = Point(x: x, y: y)
    }
    
    func fireAtEnemy(enemy: Enemy) {
        if inRange(self.position, range: self.range, target: enemy.position)
        {
            while enemy.life > 0 {
                enemy.decreaseHealth(self.strength)
                print("Enemy vanquished")
                
            }
        } else {
            print("Darn! The enemy is out of range!")
        }
    }
    
    func inRange(position: Point, range: Int, target: Point) -> Bool {
        let availablePositions = position.surroundingPoints(withRange: range)
        
        for point in availablePositions {
            if (point.x == target.x) && (point.y == target.y) {
              return true
            }
           
        }
        return false
    }
}

class SuperEnemy: Enemy {
    let isSuper: Bool = true
  
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.life = 50
    }
}

class LaserTower: Tower {
   
    override init(x: Int, y: Int) {
        super.init(x: x, y: y)
        self.range = 100
        self.strength = 100
    }
    
    override func fireAtEnemy(enemy: Enemy) {
        while enemy.life >= 0  {
            enemy.decreaseHealth(strength)
            
        }
        print("Enemy vanquished!")
    }
}


let tower = Tower(x: 0, y: 0)
let enemy1 = Enemy(x: 1, y: 1)

let laserTower = LaserTower(x: 0, y: 0)
let superEnemy = SuperEnemy(x: 20, y: 20)
laserTower.fireAtEnemy(superEnemy)


tower.fireAtEnemy(enemy1)







/*Code Challenge
 
 Challenge Task 1 of 1
 
 In this task, we're going to create our first struct. Declare a struct named User.
 
 Give it two constant stored properties - name of type String and age of type Int.
 */

struct User {
    let name: String
    let age: Int
}

/////////////////

/* Challenge Task 1 of 1
 
 Struct definitions are simply blueprints and to use them we need to create an instance. I've declared a struct in the editor.
 
 Create an instance of the struct and assign the values "Animal Farm", "George Orwell" and 6.00 to the title, author and price properties respectively.
 
 Assign this instance to a constant named myBook.
 
 */

struct Book {
    let title: String
    let author: String
    let price: Double
}

let myBook = Book(title: "Animal Farm", author: "George Orwell", price: 6.00)

//////////////

/* Challenge Task 1 of 2
 
 Given the struct below in the editor, we want to add a method that returns the person’s full name. Declare a method named getFullName() that returns a string containing the person’s full name. Note: Make sure to allow for a space between the first and last name
 
 */

/* Challenge Task 2 of 2
 
 Let's use the struct to create an instance of Person and assign it to a constant named aPerson. Assign any values you want to the first and last name properties.
 
 Once you have an instance, call the instance method and assign the full name to a constant named fullName.
 */

struct Person {
    let firstName: String
    let lastName: String
    
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let aPerson = Person(firstName: "Guido", lastName: "Medina")

let fullName = aPerson.getFullName()


/*
 Challenge Task 1 of 1 Custom Iniitializers
 
 In the editor, I’ve declared a struct named RGBColor that models a color object in the RGB space.
 
 Your task is to write a custom initializer method for the object. Using the initializer assign values to the first four properties. Using the values assigned to those properties create a value for the description property that is a string representation of the color object.
 
 For example, given the values 86.0 for red, 191.0 for green, 131.0 for blue and 1.0 for alpha, each of the stored properties should hold these values and the description property should look like this:
 
 "red: 86.0, green: 191.0, blue: 131.0, alpha: 1.0"
 
 Note: Init methods typically list parameters in the same order of property declaration. For this task, stick to the order red,green,blue,alpha.
 
 */

struct RGBColor {
    let red: Double
    let green: Double
    let blue: Double
    let alpha: Double
    
    let description: String
    
    // Add your code below
    init(red: Double, green: Double, blue: Double, alpha: Double) {
        self.red = 86.0
        self.green = 191.0
        self.blue = 131.0
        self.alpha = 1.0
        self.description = "red: \(red), green: \(green), blue: \(blue), alpha: \(alpha)"
    }
}
///////////

/*
 Challenge Task 1 of 1
 
 Let's get in some practice creating a class. Declare a class named Shape with a variable property named numberOfSides of type Int.
 
 Remember that with classes you are required to write an initializer method.
 
 Once you have a class definition, create an instance and assign it to a constant named someShape.
*/

class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int){
        self.numberOfSides = numberOfSides
    }
}

let someShape = Shape(numberOfSides: 3)

////////////

/* Challenge Task 1 of 1
 
 In the editor you've been provided with a struct named Location that models a coordinate point using longitude and latitude values.
 
 For this task we want to create a class named Business. The class contains two constant stored properties: name of type String and location of type Location.
 
 In the initializer method pass in a name and an instance of Location to set up the instance of Business. Using this initializer, create an instance and assign it to a constant named someBusiness.
*/

struct Location {
    let latitude: Double
    let longitude: Double
}

class Business {
    let name: String
    let location: Location
    
    init(name: String, location: Location) {
        self.name = name
        self.location = location
    }
}

let someBusiness = Business(name: "Pied Piper", location: Location(latitude: 2.3, longitude: 3.4))

/////////

/* Code Challenge
 In the editor, I have provided a class named Vehicle.
 
 Your task is to create a subclass of Vehicle, named Car, that adds an additional stored property numberOfSeats of type Int with a default value of 4.
 
 Once you've implemented the Car class, create an instance and assign it to a constant named someCar.
 */
 
 class Vehicle {
 var numberOfDoors: Int
 var numberOfWheels: Int
 
 init(withDoors doors: Int, andWheels wheels: Int) {
     self.numberOfDoors = doors
     self.numberOfWheels = wheels
    }
 }
 
 // Enter your code below


class Car: Vehicle {
    var numberOfSeats: Int = 4
}

let someCar = Car(withDoors: 4, andWheels: 4)



/////////////


/* Code Challenge
 
 I've provided a base class Person in the editor below. Once an instance of Person is created, you can call getFullName() and get a person's full name.
 
 Your job is to create a class named Doctor that overrides the getFullName() method. Once you have a class definition, create an instance and assign it to a constant named someDoctor.
 
 For example, given the first name "Sam", and last name "Smith", calling getFullName() on an instance of Person would return "Sam Smith", but calling the same method on an instance of Doctor would return "Dr. Smith".
 
 */

class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}
///my code
class Doctor: Person {
    override func getFullName() -> String {
        return "Dr. \(lastName)"
    }
    
}

let someDoctor = Doctor(firstName: "Sam", lastName: "Smith")


/////////////////////










