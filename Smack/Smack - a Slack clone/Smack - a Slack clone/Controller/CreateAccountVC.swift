//
//  CreateAccountVC.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 23/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBAction func closeCreateAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHN, sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
