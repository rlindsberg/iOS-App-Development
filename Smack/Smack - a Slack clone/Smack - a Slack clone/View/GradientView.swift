//
//  GradientView.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 22/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

@IBDesignable //render inside the storyboard
class GradientView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBInspectable var topColor: UIColor = UIColor.blue {
        didSet {
            self.setNeedsLayout() //update the layout of this view after we changed sth.
        }
    }
    @IBInspectable var bottonColor: UIColor = UIColor.green {
        didSet {
            self.setNeedsLayout() //update the layout of this view after we changed sth.
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottonColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0) //at the top (0)
    }

}
