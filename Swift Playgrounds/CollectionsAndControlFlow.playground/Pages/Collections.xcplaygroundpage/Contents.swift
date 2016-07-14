// Arrays

var todo: [String] = [
    "Finish collections course",
    "Buy groceries",
    "Respond to emails"]

todo.append("Pick up dry cleaning")

todo += ["Order book online!"]

let secondTaskList = ["Mow the lawn"]

// Reading from Arrays

let firstTask = todo[0]

let thridTask = todo[2]

todo[4] = "Brush teeth"

// Inserting Using Indexes

todo.insert("Pay bills", atIndex: 2)

// Removing Items

todo.removeAtIndex(3)

todo.count

// Dealing with non-existent data

//let lastItem = todo[5]


///////////////////
//Dictionaries////
//////////////////

/*  AirPort Code
     (key)
 
     LGA                 LaGuardia
     LHR                 Heathrow
     CDG                 Charles De Gualle
     HKG                 Hong Kong International
     DXB                 Dubai International
 
 
 */

var airportCodes: [String: String] = ["LGA": "La Guardia",
                    "LHR": "Heathrow",
                    "CDG": "Charles De Gualle",
                    "HKG": "Hong Kong International",
                    "DXB": "Dubai International"
]


// Read from a dictionary

airportCodes["LGA"]

// Inserting the Key Value Pairs

airportCodes["SYD"] = "Sydney Airport"

airportCodes["LGA"] = "La Guardia International"

airportCodes.updateValue("Dublin Airport", forKey: "DUB")

// Removing Key Value Pairs

airportCodes["DXB"] = nil
airportCodes.removeValueForKey("DUB")


// Dealing with non-existent data

let airportName = airportCodes["LGA"]

let orlandoAirport = airportCodes["MCO"]

// Code Challenge

var iceCream = ["CC": "Chocalate Chip",
                                  "AP": "Apple Pie",
                                  "PB": "Peanut Butter"
]

iceCream.updateValue("Pistachio", forKey: "PI")














