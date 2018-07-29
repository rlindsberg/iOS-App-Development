//
//  CreateAccountVC.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 23/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwdTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    //default variables
    var avatarName = "profileDefault"
    var avatarColour = "[0.5, 0.5, 0.5, 1]" //light gray
    var bgColour: UIColor? //optional avatar bg colour
    
    
    @IBAction func pickAvatarBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_PICK_AVATAR, sender: nil)
    }
    @IBAction func closeCreateAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHN, sender: nil)
    }
    @IBAction func createAccountPressed(_ sender: Any) {
        //show activity indicator
        activityIndicator.isHidden = false
        
        //guardlet is a way of unwrapping optional values.
        //var text: String? { get set }. This is an optional value and thus musted be unwrapped. Eg. emailTxt.text != "".
        guard let username = usernameTxt.text, usernameTxt.text != "" else { return }
        guard let email = emailTxt.text, emailTxt.text != "" else { return } //transfers control out of a scope if the expression is nil
        guard let pass = passwdTxt.text, passwdTxt.text != "" else { return } //! maybe should consider throw error than just return
        
        //all passed, register user
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            
            if success { //then login user
                print("CreateAccountVC: registered user!", AuthService.instance.userEmail)
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    
                    if success { //then create user
                        print("CreateAccountVC: logged in user!", AuthService.instance.authToken)
                        
                        //Reference to property 'avatarName' in closure requires explicit 'self.' to make capture semantics explicit
                        AuthService.instance.createUser(avatarColour: self.avatarColour, avatarName: self.avatarName, email: email, name: username, completion: { (success) in
                            
                            if success { //end of three stages. quit to channel view
                                print("CreateAccountVC: created user! all done.", UserDataService.instance.name, UserDataService.instance.avatarName)
                                
                                //stop the activity indicator
                                self.activityIndicator.isHidden = true
                                self.activityIndicator.stopAnimating()
                                
                                //send out notification
                                NotificationCenter.default.post(name: NOTIF_DATA_DID_CHANGE, object: nil)
                                
                                //go to channel
                                self.performSegue(withIdentifier: UNWIND_TO_CHN, sender: nil)
                            }
                        })
                    }
                })
            }
        }
        
    }

    @IBAction func pickBGColorPressed(_ sender: Any) {
        //generate bg colour
        let r = CGFloat(arc4random_uniform(255)) / 255
        let g = CGFloat(arc4random_uniform(255)) / 255
        let b = CGFloat(arc4random_uniform(255)) / 255
        bgColour = UIColor(red: r, green: g, blue: b, alpha: 1)
        UIView.animate(withDuration: 0.2) { 
            self.userImg.backgroundColor = self.bgColour
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        if UserDataService.instance.avatarName != "" {
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
            avatarName = UserDataService.instance.avatarName
            print("Default avatar changed to \(avatarName)")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //hide activityIndicator at start
        activityIndicator.isHidden = true
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
