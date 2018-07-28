//
//  AvatarDataService.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 27/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

class AvatarDataService {
    static let instance = AvatarDataService()
    
    public var avatarType = AvatarType.dark
    public var avatarTypeSegmentCtrl = 0

    private let darkAvatars = [
        Avatar(title: "dark0", imageName: "dark0"),
        Avatar(title: "dark1", imageName: "dark1"),
        Avatar(title: "dark2", imageName: "dark2"),
        Avatar(title: "dark3", imageName: "dark3"),
        Avatar(title: "dark4", imageName: "dark4"),
        Avatar(title: "dark5", imageName: "dark5"),
        Avatar(title: "dark6", imageName: "dark6"),
        Avatar(title: "dark7", imageName: "dark7"),
        Avatar(title: "dark8", imageName: "dark8"),
        Avatar(title: "dark9", imageName: "dark9"),
        Avatar(title: "dark10", imageName: "dark10"),
        Avatar(title: "dark11", imageName: "dark11"),
        Avatar(title: "dark12", imageName: "dark12"),
        Avatar(title: "dark13", imageName: "dark13"),
        Avatar(title: "dark14", imageName: "dark14"),
        Avatar(title: "dark15", imageName: "dark15"),
        Avatar(title: "dark16", imageName: "dark16"),
        Avatar(title: "dark17", imageName: "dark17"),
        Avatar(title: "dark18", imageName: "dark18"),
        Avatar(title: "dark19", imageName: "dark19"),
        Avatar(title: "dark20", imageName: "dark20"),
        Avatar(title: "dark21", imageName: "dark21"),
        Avatar(title: "dark22", imageName: "dark22"),
        Avatar(title: "dark23", imageName: "dark23"),
        Avatar(title: "dark24", imageName: "dark24"),
        Avatar(title: "dark25", imageName: "dark25"),
        Avatar(title: "dark26", imageName: "dark26"),
        Avatar(title: "dark27", imageName: "dark27"),
    ]
    
    private let lightAvatars = [
        Avatar(title: "light0", imageName: "light0"),
        Avatar(title: "light1", imageName: "light1"),
        Avatar(title: "light2", imageName: "light2"),
        Avatar(title: "light3", imageName: "light3"),
        Avatar(title: "light4", imageName: "light4"),
        Avatar(title: "light5", imageName: "light5"),
        Avatar(title: "light6", imageName: "light6"),
        Avatar(title: "light7", imageName: "light7"),
        Avatar(title: "light8", imageName: "light8"),
        Avatar(title: "light9", imageName: "light9"),
        Avatar(title: "light10", imageName: "light10"),
        Avatar(title: "light11", imageName: "light11"),
        Avatar(title: "light12", imageName: "light12"),
        Avatar(title: "light13", imageName: "light13"),
        Avatar(title: "light14", imageName: "light14"),
        Avatar(title: "light15", imageName: "light15"),
        Avatar(title: "light16", imageName: "light16"),
        Avatar(title: "light17", imageName: "light17"),
        Avatar(title: "light18", imageName: "light18"),
        Avatar(title: "light19", imageName: "light19"),
        Avatar(title: "light20", imageName: "light20"),
        Avatar(title: "light21", imageName: "light21"),
        Avatar(title: "light22", imageName: "light22"),
        Avatar(title: "light23", imageName: "light23"),
        Avatar(title: "light24", imageName: "light24"),
        Avatar(title: "light25", imageName: "light25"),
        Avatar(title: "light26", imageName: "light26"),
        Avatar(title: "light27", imageName: "light27"),
    ]
    
    func getAvatars(type: AvatarType) -> [Avatar] {
        if (type == AvatarType.dark) {
            return darkAvatars
        } else {
            return lightAvatars
        }
        
    }
}
