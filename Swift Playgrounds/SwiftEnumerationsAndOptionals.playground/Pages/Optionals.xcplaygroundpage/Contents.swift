

struct Person {
    let firstName: String
    let middleName: String?
    let lastName: String
    
    func getFullName() -> String {
        if middleName == nil {
            return firstName + " " + lastName
        } else {
            return firstName + " " + middleName! + " " + lastName
        }
    }
}

let me = Person(firstName: "Guido", middleName: nil, lastName: "Medina")

me.getFullName()

let airportCodes = ["CDG": "Charles de Gaulle"]


if let newYorkAirport = airportCodes["JFK"] {
    print(newYorkAirport)
} else {
    print("Whoops that key does not exist!")
}


////Correct way to unwrap optionals
let weatherDictionary: [String : [String : String]] =
    ["currently": ["temperature": "22.3"], "daily": ["temperature": "22.3"], "weekly": ["temperature": "22.3"]]

if let dailyWeather =  weatherDictionary["daily"],
    let highTemperature = dailyWeather["temperature"] {
        print(highTemperature)
}

/*
 Challenge Task 1 of 1
 
 In the editor, you have a pretty complex dictionary representing a movie. It contains a nested dictionary, which itself contains an array of Strings as a value.
 
 Your job is to assign the string containing the value for the lead actor (which for the sake of the example is at position 0 in the array) to the variable leadActor.
 
 Since dictionaries return optional values, you will have to use an if let statement to unwrap each consecutive operation.
*/

let movieDictionary = ["Spectre": ["cast": ["Daniel Craig", "Christoph Waltz", "Léa Seydoux", "Ralph Fiennes", "Monica Bellucci", "Naomie Harris"]]]

var leadActor: String = ""

if let movieActor = movieDictionary["Spectre"],
    let cast = movieActor["cast"] {
    leadActor = cast[0]
}

///Done


// how we do in swift 2
struct Friend {
    let name: String
    let age: String
    let address: String?
}

func createFriend(dict: [String: String]) -> Friend? {
    guard let name = dict["name"], age = dict["age"] else {
        return nil
}
    let address = dict["address"]
    return Friend(name: name, age: age, address: address)
}


/* Code Challenge
 in the editor, you have a struct named Book which has few stored properties, two of which are optional.
 
 Your task is to create a failable initializer that accepts a dictionary as input and initializes all the stored properties. (Hint: A failable init method is one that can return nil and is written as init?). Name the initializer parameter dict.
 
 Use the following keys to retrieve values from the dictionary: "title", "author", "price", "pubDate"
 
 */


struct Book {
    let title: String
    let author: String
    let price: String?
    let pubDate: String?
    


 init?(dict: [String: String]) {
    guard let title = dict["title"], let author = dict["author"] else {
        return nil
    }
      self.title = title
      self.author = author
      self.price = dict["price"]
      self.pubDate = dict["pubDate"]
   }
}
/// end code










