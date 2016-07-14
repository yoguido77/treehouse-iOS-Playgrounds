// Error Handling

Int.init("abc")

struct Friend {
    let name: String
    let age: String
    let address: String?
}

enum FriendError: ErrorType {
    case InvalidData(String)
    
}

func createFriendFromJSON(dict: [String : String]) throws -> Friend {
    guard let name = dict["name"] else {
        throw FriendError.InvalidData("Name key fails")
    }
    
    guard let age = dict["age"] else {
        throw FriendError.InvalidData("The age Key fails.")
    }
    
    let address = dict["address"]
    
    return Friend(name: name, age: age, address: address)
}


func sendMessageToFriend(friend: Friend, message: String) {
    
}

let response = ["name": "Guido", "ages": "39", "address": "someAddress"]

do {
    let friend = try createFriendFromJSON(response)
    sendMessageToFriend(friend, message: "")
} catch FriendError.InvalidData(let key) {
    print(key)
}
    



/* Code Challenge #1
 
 For this task, let's get some practice throwing an error. You've been provided with an error object in the editor. Errors are typically thrown from inside functions so let's start by creating a function that can throw.
 Name this function lend. It takes no parameters and has no return type.
 

 Code Challenge #2
 From inside the body of the function, throw an error using the error object and single member provided.
 
 */

enum BookError: ErrorType {
    case IncorrectTitle
}

//Answer for #1
func lend() throws {
    //Answer for #2
    throw BookError.IncorrectTitle
}

/* Code Challenge #1
 
 In the editor, you have a struct named Parser whose job is to deconstruct information from the web. The incoming data can be nil, keys may not exist, and values might be nil as well.
 In this task, complete the body of the parse function. If the data is nil, throw the EmptyDictionary error. If the key "someKey" doesn't exist throw the InvalidKey error.
 Hint: To get a list of keys in a dictionary you can use the keys property which returns an array. Use the contains method on it to check if the value exists in the array
 
Code Challenge #2
 Now that you have good error handling code, let's call the parse method. Remember that since this is a throwing function, you will need to use a do catch block. For this task, just use a generic catch block rather than pattern matching on specific errors.
 In the catch clause, simply log an error message of your choosing.
 
 Code Challenge #3
 
 Perfect! We're almost done. Rather than a generic catch clause, let's pattern match on the specific errors so that we can log better error messages.
 In this task, change the catch statement to include specific error cases. Like before you can just log an error message of your choosing.
 
 */

enum ParserError: ErrorType {
    case EmptyDictionary
    case InvalidKey
}

struct Parser {
    var data: [String : String?]?
    
    func parse() throws {
        //Answer to #1 both guard statements below
        guard let data = data else {
            throw ParserError.EmptyDictionary
        }
        guard let key = data["someKey"] else {
            throw ParserError.InvalidKey
        }
    }    //
}



let data: [String : String?]? = ["someKey": nil]
let parser = Parser(data: data)

// Answer to challenge #2
do {
    try parser.parse()
   // Answer to challenge 3
} catch ParserError.EmptyDictionary {
    print("empty dictionary")
} catch ParserError.InvalidKey {
    print("misssing key")
}
//






 