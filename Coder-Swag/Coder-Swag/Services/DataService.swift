//
//  DataService.swift
//  Coder-Swag
//
//  Created by Roderick Karlemstrand on 07/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

class DataService {
    //create a static object of DataService
    static let instance = DataService()
    
    //create (or retrive from a server) data source for our app
    //categories is an array of Category:s
    private let categories = [
        Category(title: "Shirts", imageName: "shirts.png"),
        Category(title: "Hoodies", imageName: "hoodies.png"),
        Category(title: "Hats", imageName: "hats.png"),
        Category(title: "Digital", imageName: "digital.png")
    ]
    
    //return a array of Category:s.
    func getCategories() -> [Category]{
        return categories
    }
    
    private let hats = [
        Product(title: "Devslopes Logo Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22", imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$20", imageName: "hat04.png")
    ]
}
