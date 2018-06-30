//
//  DiceeVC.swift
//  Dicee
//
//  Created by Roderick Karlemstrand on 30/06/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class DiceeVC: UIViewController {

    @IBOutlet weak var viewDice1: UIImageView!
    @IBOutlet weak var viewDice2: UIImageView!
    
    @IBAction func rollBtnTapped(_ sender: UIButton) {
        var randomDiceIndex1 :Int = Int(arc4random(6))
        var randomDiceIndex2 :Int = Int(arc4random(6))
        
        if randomDiceIndex1 == 2 {
            viewDice1.image = UIImageView(#imageLiteral(resourceName: "dice2"))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

