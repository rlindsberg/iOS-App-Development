//
//  UserDataService.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 26/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

class UserDataService {
    static let instance = UserDataService()
    public private(set) var id = "" //public access, private set
    public private(set) var avatarBgColour = ""
    public private(set) var avatarName = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    func setUserData(id: String, avatarBgColour: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarBgColour = avatarBgColour
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func updateAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
}
