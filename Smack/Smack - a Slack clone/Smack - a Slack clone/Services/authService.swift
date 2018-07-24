//
//  authService.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 24/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation
import Alamofire

class AuthService {
    static let instance = AuthService()
    let defaults = UserDefaults.standard //save data in the app
    
    var isLoggedIn: Bool {
        get {
            return defaults.bool(forKey: LOGGED_IN_KEY)
        }
        set {
            defaults.set(newValue, forKey: LOGGED_IN_KEY)
        }

    }
    
    var authToken: String {
        get {
            return defaults.value(forKey: TOKEN_KEY) as! String //cast as string
        }
        set {
            defaults.set(newValue, forKey: TOKEN_KEY)
        }
        
    }
    
    var userEmail: String {
        get {
            return defaults.value(forKey: USER_EMAIL) as! String //cast as string
        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler) {
        //completion handler to know when registration is done
    }
    
}
