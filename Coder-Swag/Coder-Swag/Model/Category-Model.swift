//
//  Category-Model.swift
//  Coder-Swag
//
//  Created by Roderick Karlemstrand on 07/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

struct Category {
    //private(set) prevent other classes setting data
    private(set) public var title: String
    private(set) public var imageName: String

    //this "title" and "imageName" are parameter names while those above are variable names
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
