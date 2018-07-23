//: Playground - noun: a place where people can play

import UIKit

// = is an assignment operator, type inference
var message = "Hello, playground"

//Operators: Unary, Binary and Ternary

var amICool = true

//Unary prefix operator
amICool = !amICool

//Ternary ex.1
var feelGoodAboutMyself = "Not sure"
feelGoodAboutMyself = amICool ? "Yeah I'm cool" : "Nay"
amICool = true
feelGoodAboutMyself = amICool ? "Yeah I'm cool" : "Nay"

//Ternary ex.2
var bankAccountBalance = 100
var cashRegisterMess = bankAccountBalance >= 150 ? "You just bought the item" : "Payment not approved"

//String interpolation
var age = 45
var firstName = "Jack"
var lastName = "Bauer"
var fullName = "\(firstName) \(lastName) is \(age)"
fullName.append(" years old")

//Lower, upper and Capitalize
var bookTitle = "revenge of the crab cakes"
bookTitle = bookTitle.capitalized

var ChatroomAnnoyingCapsGuy = "HAHAHA THIS IS SO FUNNY. PLEASE HELP..."
ChatroomAnnoyingCapsGuy = ChatroomAnnoyingCapsGuy.lowercased()

//Chatroom, Oh my heck, fetch
var sentence = "What the fetch?! Heck that is crazy"

if sentence.contains("fetch") || sentence.contains("Hech"){
    sentence.replacingOccurrences(of: "fetch", with: "tuna")
    sentence.replacingOccurrences(of: "Heck", with: "Playa")
}


//another course, refresh
//variables

var myAge = 24
myAge = 25

let name = "Rodde"
//name = "Fredric" throws error

let surname = "Karl"
let myFullName = "\(name) " + surname

//function
func getMilk(howManyMilkCartons: Int, cash: Int) -> Int { //return an int
    print("go to the shop")
    print("buy \(howManyMilkCartons) cartons of milk")
    let price = howManyMilkCartons * 2
    print("pay £\(price)")
    print("come home")
    
    return cash - price
}

print("Here is your change: £\(getMilk(howManyMilkCartons: 3, cash: 10))")









