//
//  ViewController.swift
//  app-swoosh
//
//  Created by Roderick Karlemstrand on 30/04/2018.
//  Copyright © 2018 Karlemstrand AB. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {

    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var BGimg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }

    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
        
    }

}

