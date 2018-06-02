//
//  Wage.swift
//  Window-Shopper
//
//  Created by Roderick Karlemstrand on 02/06/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import Foundation
class Wage {
    //forWage and andPrice are parameters of the function. wage and price are names of the variables
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
