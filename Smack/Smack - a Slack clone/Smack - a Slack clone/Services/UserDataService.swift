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
    
    //parse avatarColor: String and return UIColor
    func returnUIColour(components: String) -> UIColor {
        // "[0.2, 0.7, 0.3, 1]"
        let scanner = Scanner(string: components)
        let skipped = CharacterSet(charactersIn: "[], ") //skip brackets, commas and spaces
        let breakCharacter = CharacterSet(charactersIn: ",")
        scanner.charactersToBeSkipped = skipped
        
        var r, g, b, a: NSString?
        
        scanner.scanUpToCharacters(from: breakCharacter, into: &r) //scan from the beginning up to the comma, and save it into "r"
        scanner.scanUpToCharacters(from: breakCharacter, into: &g) //continue scanning where it left off
        scanner.scanUpToCharacters(from: breakCharacter, into: &b)
        scanner.scanUpToCharacters(from: breakCharacter, into: &a)
        
        //unwrap optional value
        let defaultColour = UIColor.lightGray //incase scanner fails
        guard let rUnwrapped = r else { return defaultColour }
        guard let gUnwrapped = g else { return defaultColour }
        guard let bUnwrapped = b else { return defaultColour }
        guard let aUnwrapped = a else { return defaultColour }
        
        //convert strings to cgfloat
        let rfloat = CGFloat(rUnwrapped.doubleValue) //convert double to cgfloat
        let gfloat = CGFloat(gUnwrapped.doubleValue)
        let bfloat = CGFloat(bUnwrapped.doubleValue)
        let afloat = CGFloat(aUnwrapped.doubleValue)
        print("Printing UIColor")
        
        AvatarDataService.instance.avatarBgRGB = UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
        return UIColor(red: rfloat, green: gfloat, blue: bfloat, alpha: afloat)
    }
}
