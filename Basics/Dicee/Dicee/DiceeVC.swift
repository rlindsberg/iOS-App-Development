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
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBAction func rollBtnTapped(_ sender: UIButton) {
        rollTheDices()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rollTheDices()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func rollTheDices() {
        viewDice1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        viewDice2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    }


}

