protocol Printable  {
    func description() -> String
}


protocol PrettyPrintable: Printable {
    func prettyDescription() -> String
}

struct User: PrettyPrintable {
    let name: String
    let age: Int
    let address: String
    
    func description() -> String {
        return "\(name), \(age), \(address)"
    }
    
    func prettyDescription() -> String {
        return "name: \(name)\nage: \(age)\naddress: \(address)"
    }
}

let user = User(name: "Guido", age: 39, address: "Some")

user.description()

print(user.prettyDescription())


/* Code Challenge 1
 
 In the editor, I've provided a simple protocol to represent an animal.
 
 For the first task, create a protocol named PetType. PetType should inherit from AnimalType and require an additional gettable stored property, cuddlyName, of type String.
 
 Code Challenge 2
 For the next step, create a struct named Dog that conforms to PetType.

*/

protocol AnimalType {
    var numberOfLegs: Int { get }
}

//my answer code #1
protocol PetType: AnimalType {
    var cuddlyName: String { get }
}

//my answer code #2
struct Dog: PetType {
    var numberOfLegs: Int
    var cuddlyName: String
}



////////  Protocl Oriented Programming

struct Point {
    let x: Int
    let y: Int
    
    func pointsAroundMe(withRange range: Int) -> [Point] {
        var results: [Point] = []
        
        for x in (self.x - range)...(self.x + range) {
            for y in (self.y - 1)...(self.y + 1) {
                let point = Point(x: x, y: y)
                results.append(point)
            }
        }
        
        return results
    }
}

enum Direction {
    case Up, Down, Right, Left
}

protocol Movable {
    func move(direction: Direction, distance: Int)
}


protocol Destructable {
    func decreasedLife(factor: Int)
}

protocol Attackable {
    var strength: Int { get }
    var range: Int { get }
    
    func attack(player: PlayerType)
}

protocol PlayerType {
    var position: Point { get set }
    var life: Int { get set }
    
    init(point: Point)
}