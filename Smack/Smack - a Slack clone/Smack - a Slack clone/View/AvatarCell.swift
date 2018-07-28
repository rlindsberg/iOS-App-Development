//
//  AvatarCell.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 27/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

enum AvatarType {
    case dark
    case light
}
class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.clipsToBounds = true
        //iPhone 4s, 5s, SE
        if UIScreen.main.bounds.width == 320 {
            self.layer.cornerRadius = 42
        } else { //other devices
            self.layer.cornerRadius = 50
        }
    }
    
    func updateViews(type: AvatarType, avatar: Avatar) {
        //Should add avatar name to UserDataService
        
        avatarImg.image = UIImage(named: avatar.imgName)
        if type == AvatarType.dark {
            self.layer.backgroundColor = UIColor.lightGray.cgColor
        } else {
            self.layer.backgroundColor = UIColor.darkGray.cgColor
        }
    }
    
    func configureCell(index: Int, type: AvatarType) {
        if type == AvatarType.dark {
            
        }
    }
    
}
