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
        self.layer.cornerRadius = 42
        self.clipsToBounds = true
    }
    
    func updateViews(avatar: Avatar) {
        //Should add avatar name to UserDataService
        
        avatarImg.image = UIImage(named: avatar.imgName)
    }
    
    func configureCell(index: Int, type: AvatarType) {
        if type == AvatarType.dark {
            
        }
    }
    
}
