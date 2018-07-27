//
//  Avatar.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 27/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

struct Avatar {
    private(set) public var title: String
    private(set) public var imgName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imgName = imageName
    }
}
