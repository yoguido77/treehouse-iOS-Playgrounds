enum Coin: Double {
    case Penny = 0.01
    case Nickel = 0.05
    case Dime = 0.10
    case Quarter = 0.25
}

let wallet: [Coin] = [.Penny, .Nickel, .Dime, .Dime, .Quarter, .Quarter, .Quarter, .Penny, .Nickel, .Dime, .Penny, .Nickel, .Quarter, .Quarter, .Penny]


var count: Int = 0

for coin in wallet {
    switch coin {
    case .Quarter: count += 1
    default: continue
    }
}


for case .Quarter in wallet {
    count += 1
}

for coin in wallet {
    if case .Nickel = coin {
        print("Not so much money!")
    } else if case .Dime = coin {
        print("Eh I guess it's some money")
    }
}

let someOptional: Int? = 42

if case .Some(let x) = someOptional {
    print(x)
}

//// Nil Coalescing Operator

let firstName: String? = "Guido"
let userName = "yoguido77"

var displayName: String

if firstName != nil {
    displayName = firstName!
} else {
    displayName = userName
}

displayName = firstName != nil ? firstName! : userName

//correct way
displayName = firstName ?? userName






//Fizz buzz for fun
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