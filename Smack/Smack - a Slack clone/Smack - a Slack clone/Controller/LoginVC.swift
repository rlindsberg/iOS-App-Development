//
//  LoginVC.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 23/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBAction func closeLogInBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    @IBAction func loginBtnPressed(_ sender: Any) {
        guard let email = emailTxt.text else { return }
        guard let pass = passwordTxt.text else { return }
        AuthService.instance.loginUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.isLoggedIn = true
                print("CreateAccountVC: logged in user!", AuthService.instance.authToken)
                
                //setting user data
                UserDataService.instance.setUserData(id: "lind", avatarBgColour: "[0.5, 0.5, 0.5, 1]", avatarName: "light3", email: self.emailTxt.text!, name: "lind")
                AvatarDataService.instance.avatarBgRGB = UIColor(red: 0.3, green: 0.7, blue: 0.2, alpha: 1)
                //send out notification
                NotificationCenter.default.post(name: NOTIF_DATA_DID_CHANGE, object: nil)
                
                self.dismiss(animated: true, completion: nil)
            }
        }
        
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
