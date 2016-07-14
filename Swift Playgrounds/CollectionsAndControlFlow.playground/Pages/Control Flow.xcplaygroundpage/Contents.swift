var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails",
    "Pick up dry cleaning",
    "Order book online",
    "Mow lawn"
    ]

for task in todo {
    print(task)
}


// Range Operators

for number in 1...10 {
    print("\(number) times 5 is equal to \(number * 5)")
}

///////////////////
//While Loop////
//////////////////

var x = 0

while x <= 20 {
    print(x)
    x++
}

var index = 0

while index < todo.count {
    print(todo[index])
    index++
    
}

// Repeat While

//var counter = 1

while counter < 1 {
    print("I'am inside the while loop!")
    counter++
}



repeat {
    print("I'am inside the repeat loop!")
    counter++
} while counter < 1



// Code Challenge

let numbers = [2,8,1,16,4,3,9]
var sum = 0
var counter = 0

// Enter your code below

while counter < numbers.count {
    sum += numbers[counter]
    counter += 1
}

///////////////////
// If Statemnts///
//////////////////

var temperature = 14


if temperature < 12 {
    print("It's getting cold, get a jacket out")
} else if temperature < 18 {
    print("It's getting chilly. I recomment wearing a light sweater.")
}

else {
    print("It feels great outside. A t-shirt will do.")
}

///////////////////////////
///// Logical Operators////
///////////////////////////

if temperature > 7 && temperature < 12 {
    print("Might want to wear a scarf with that jacket")
}

var isRaining: Bool = true
var isSnowing: Bool = false

if isRaining || isSnowing {
    print("Get out those rain boots!")
}

if !isRaining {
    print("Yay, the sun is out")
}

if (isRaining || isSnowing) && temperature < 2 {
    print("Put some gloves on!")
}

///Code Challenge


var results: [Int] = []

for n in 1...100 {
    
    if n % 2 != 0 && n % 7 == 0 {
        //adds numbers to array
        results.append(n)
    }
    
}


/////////////////////
///// Switch Statement//
////////////////////////


let airportCodes = ["LGA", "LHR", "CDG", "HKG", "DXB", "LGQ", "JFK", "ORY"]

for airportCode in airportCodes {
    switch airportCode {
    case "LGA", "JFK": print("New York")
    case "LHR", "LGW": print("London")
    case "CDG", "ORY": print("Paris")
    case "HKG": print("Honk Kong")
    default: print("I don't know whick city this airport is in!")
    }
}

import Foundation

var randomTemperature = Int(arc4random_uniform(UInt32(150)))

switch randomTemperature {
case 0..<32: print("Forget clothes, you're basically a popsicle")
case 32...45: print("Its quite cold.  You will need a jacket")
case 45..<70: print("its a bit chill.  I recommmend wearing a light sweater.")
case 70...100: print("Its quite hot, tshirt weather!")
default: print("My face is melting!")
}


var europeanCapitals: [String] = []
var asianCapitals: [String] = []
var otherCapitals: [String] = []

let world = [
    "BEL": "Brussels",
    "LIE": "Vaduz",
    "BGR": "Sofia",
    "USA": "Washington D.C.",
    "MEX": "Mexico City",
    "BRA": "Brasilia",
    "IND": "New Delhi",
    "VNM": "Hanoi"]

for (key, value) in world {
    // Enter your code below
    switch key {
    case "BEL", "LIE", "BGR": europeanCapitals.append(value)
    case "IND", "VNM": asianCapitals.append(value)
    default: otherCapitals.append(value)
        
        // End code
}

 

/*
/// Fizz Buzz Challenge
    for n in 1...100 {
    if (n % 3 == 0) && (n % 5 == 0) {
        print("FizzBuzz")
    } else if (n % 3 == 0) {
        print("Fizz")
    
    } else if (n % 5 == 0) {
        print("Buzz")
    
    } else {
        print(n)
        }
}

*/

//Fizz Buzz Again

for n in  1...100 {
    if (n % 3 == 0) && (n % 5 == 0) {
        print("FizzBuzz")
    } else if (n % 3 == 0) {
        print("Fizz")
    } else if (n % 5 == 0) {
        print("Buzz")
    } else  {
        print(n)
    }
}




func fizzBuzz(n: Int) -> String {
    // Enter your code between the two comment markers
    if (n % 3 == 0 ) && (n % 5 == 0) {
        return "FizzBuzz"
    }
    else if (n % 3 == 0 ){
        return "Fizz"
    }
    else if (n % 5 == 0) {
        return "Buzz"
    }
    
    // End code
    return "\(n)"
}






