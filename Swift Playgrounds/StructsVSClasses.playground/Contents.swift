struct User {
    var fullName: String
    var email: String
    var age: Int
}

var someUser = User(fullName: "Guido Median", email: "yoguido77@gmail.com", age: 39)

var anotherUser = someUser

someUser.email = "yoguido88@gmail.com"

someUser.email
anotherUser.email


class Person {
    var fullName: String
    var email: String
    var age: Int
    
    init(name: String, email: String, age: Int) {
        self.fullName = name
        self.email = email
        self.age = age
    }
}

var somePerson = Person(name: "Tim Cook", email: "timcook@apple.com", age: 54)

var anotherPerson = somePerson

somePerson.email = "tcook@apple.com"

somePerson.email

anotherPerson.email
///////


/*
 

 
 We learned about instance methods before. For this task, add an instance method to Post.
 
 Name the method description. It takes no parameters and returns a string that describes the post instance. For example given a title: "iOS Development", author: "Apple", and a tag named "swift", the description would read as follows"
 
 "iOSDevelopment by Apple. Filed under swift"
 
 Once you have an instance method, call it on the firstPost instance and assign the result to a constant named postDescription
*/

struct Tag {
    let name: String
}

struct Post {
    var title: String
    var author: String
    var tag: Tag
    
    func description() -> String {
        return "\(title) by \(author). Filed under \(tag.name)"
    }
}
    
    let firstPost = Post(title: "iOS Development", author: "Apple", tag: Tag(name:"swift"))
    
    let postDescription = firstPost.description()


/////////

/* Code Challenge - Hard
 
 Challenge Task 1 of 1
 
 In the editor you've been provided with two classes - Point to represent a coordinate point and Machine. The machine has a move method that doesn't do anything because most machines are motionless.
 
 Your task is to subclass Machine and create a new class named Robot. In the Robot class, override the move method and provide the following implementation.
 If you enter the string "Up" the y coordinate of the Robot's location increases by 1. "Down" decreases it by 1.
 If you enter "Left", the x coordinate of the location property decreases by 1 while "Right" increases it by 1.
 
 Note: If you use a switch statement you can use the break statement in the default clause to exit the current iteration.
 
*/

class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}


class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: String) {
        print("Do nothing! I'm a machine!")
    }
}

//My Code
class Robot: Machine {
    override func move(direction: String) {
       switch direction {
       case "Up":
            location.y += 1
       case "Down":
            location.y -= 1
        case "Left":
            location.x -= 1
        case "Right":
            location.x += 1
        default:
           break
    }
  }
}


let player = Robot()
player.location = Point(x: 2, y: 2)
player.move("Up")

print(player.location.y)
// Enter your code below






