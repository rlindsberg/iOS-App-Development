//
//  ChannelVC.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 18/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton! //change title to username while logged in
    @IBOutlet weak var userImg: CircledImage!
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        if !AuthService.instance.isLoggedIn { //not logged in
            performSegue(withIdentifier: TO_LOGIN, sender: nil)
        } else { //takes user to profile page
            let profileVC = ProfileVC()
            profileVC.modalPresentationStyle = .custom //present vc as model
            present(profileVC, animated: true, completion: nil)
        }
    }
    
    //go from create account here
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
        //observer listens to the notif. broadcasts
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_DATA_DID_CHANGE, object: nil)
    }
    
    //accept Notif. runs when notif. is recevied
    @objc func userDataDidChange(_ notif: Notification) {
        if AuthService.instance.isLoggedIn {
            loginBtn.setTitle(UserDataService.instance.name, for: .normal) //the normal state of the btn
            userImg.image = UIImage(named: UserDataService.instance.avatarName) //update avatar img
            userImg.backgroundColor = AvatarDataService.instance.avatarBgRGB //update avatar bg
        } else {
            //change to defaults
            loginBtn.setTitle("Log in", for: .normal)
            userImg.image = UIImage(named: "menuProfileIcon")
        }
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
