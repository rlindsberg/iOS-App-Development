//
//  Player.swift
//  app-swoosh
//
//  Created by Roderick Karlemstrand on 02/05/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import Foundation

//struct usually is faster than class
//** Whenever you need to work with data, put it in a struct or class, never pass around multiple variables between view controllers.
struct Player {
    //var myData: String! Implictly unwrapped optional,
    //Used when you can guarantee variable will ha data in it before used
    //var myData: String? Optional,
    //Used when there may or may not be data in the variable at runtime
    var desiredLeague: String!
    var selectedSkillLevel: String!
}
