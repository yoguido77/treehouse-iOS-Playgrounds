class Address {
    var streetName: String?
    var buildingNumber: String?
    var apartmentNumber: String?
}

class Residence {
    var address: Address?

}

class Person {
    var residence: Residence?
}

let susan = Person()

let address = Address()
address.streetName = "1234 Something Drive"
address.buildingNumber = "Building 10"
address.apartmentNumber = "204"

let residence = Residence()
residence.address = address

susan.residence = residence

///example of optional chaining
if let apartmentNumber = susan.residence?.address?.apartmentNumber {
    print(apartmentNumber)
}


