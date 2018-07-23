//: Playground - noun: a place where people can play

import UIKit

//Swift basics course, refreshing
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

//branches

