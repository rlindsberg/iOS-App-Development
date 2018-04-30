//: Playground - noun: a place where people can play

import UIKit

// = is an assignment operator
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
