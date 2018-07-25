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
    @IBAction func createAccountPressed(_ sender: Any) {
        //guardlet is a way of unwrapping optional values.
        //var text: String? { get set }. This is an optional value and thus musted be unwrapped. Eg. emailTxt.text != "".
        guard let email = emailTxt.text, emailTxt.text != "" else { return } //transfers control out of a scope if the expression is nil
        guard let pass = passwdTxt.text, passwdTxt.text != "" else { return } //! maybe should consider throw error than just return
        
        //all passed,
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                print("registered user!")
            }
        }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwdTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
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
