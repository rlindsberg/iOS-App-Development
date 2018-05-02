//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Roderick Karlemstrand on 30/04/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 1.6
        layer.borderColor = UIColor.white.cgColor
    }

}
