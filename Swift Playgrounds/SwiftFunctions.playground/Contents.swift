//Swift Functions



func calculateArea(length: Int, width: Int) -> Int {
    let area = length * width
    
    return area
}

// Room 1
let areaOfRoom1 = calculateArea(10, width: 8)
areaOfRoom1

// Room 2
calculateArea(12, width: 15)

func concatenateStrings(a: String, b: String) -> String {
    return a + b
    
}

concatenateStrings("A", b: "B")

func sayHello(to person: String, and anotherPerson: String) -> String {
    return "Hello \(person) and \(anotherPerson)"
}

sayHello(to: "Pasan", and: "Gabe")


// Default Values

func carpetCostCalculator(length length: Int, width: Int, carpetColor: String = "tan") -> (price: Int, carpetColor: String) {
    // Gray carpet - $1 /sq ft
    // tan Carpet - $2/sq ft
    // Deep Blue Carpet - $3/sq ft
    
    let area = calculateArea(length, width: width)
    var price: Int
    
    switch carpetColor {
         case "gray": price = area * 1
         case "tan": price = area * 2
         case "blue": price = area * 4
         default: price = 0
    }
    
    return (price, carpetColor)
    
}

let result = carpetCostCalculator(length: 10, width: 20)

result.price
result.carpetColor


/// Function Scope

func countDownAndUp(var a: Int) {
    var b = a
    
    while b >= 0 {
        b -= 1
        a += 1
        print("a: \(a)")
        print("b: \(b)")
        
    }
}

var a = 20
countDownAndUp(a)

// Code Challenge

/*For this challenge, let's say we're building a component of an app that allows a user to type in a location of a famous landmark and get back the geographical coordinates.

To keep the scope limited, let's say we're only working with the following values.

Eiffel Tower - lat: 48.8582, lon: 2.2945
Great Pyramid - lat: 29.9792, lon: 31.1344
Sydney Opera House - lat: 33.8587, lon: 151.2140

Declare a function named getTowerCoordinates that takes a single parameter of type String, named location, and returns a tuple containing two Double values (Note: You do not have to name the return values)

Use a switch statement to switch on the string passed in to return the right set of coordinate values for the location.

For example, if I use your function and pass in the string "Eiffel Tower" as an argument, I should get (48.8582, 2.2945) as the value.

For the default case in the switch statement, return (0,0).
*/

 
 func getTowerCoordinates(location: String) -> (Double, Double) {
    switch location {
    case "Eiffel Tower":
        return (48.8582, 2.2945)
    case "Great Pyramid":
        return (29.9792, 31.1344)
    case "Sydney Opera House":
        return (33.8587, 151.2140)
    default: return (0,0)
    }
}

getTowerCoordinates("Eiffel Tower")











