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
            print("Running getters. ")
            print(defaults.value(forKey: USER_EMAIL) as! String)
            return defaults.value(forKey: USER_EMAIL) as! String //cast as string

        }
        set {
            defaults.set(newValue, forKey: USER_EMAIL)
        }
    }
    
    func registerUser(email: String, password: String, completion: @escaping CompletionHandler) { //completion handler to know when registration is done
        let lowerCaseEmail = email.lowercased()
        //create demo json obj

        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        //create request
        debugPrint("Waking up server... It may take 10 sec if at the first time.")
        Alamofire.request(URL_REG, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (respons) in
            if respons.result.error == nil {
                debugPrint("Server up. \n User registered successfully!")
                completion(true)
            } else {
                debugPrint("Server up. \n")
                completion(false)
                debugPrint(respons.result.error as Any)
            }
        } //usually responseJSON
        
    }
    
    func loginUser(email: String, password: String, completion: @escaping CompletionHandler ) {
        let lowerCaseEmail = email.lowercased()
        //create demo json obj

        let body: [String: Any] = [
            "email": lowerCaseEmail,
            "password": password
        ]
        
        debugPrint("Waking up server... It may take 10 sec if at the first time.")
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (respons) in //respons = respons from api
            if respons.result.error == nil {
                if let json = respons.result.value as? Dictionary<String, Any> { //key: String, value: Any
                    if let email = json["user"] as? String { //assign value to the var email
                        self.userEmail = email
                    }
                    if let token = json["token"] as? String { //assign token value to the var token
                        self.authToken = token
                    }
                }
                debugPrint("Server up. \n Using email \(self.userEmail)... User logged in successfully!")
                completion(true)
            } else {
                debugPrint("Server up. \n")
                completion(false)
                debugPrint(respons.result.error as Any)
            }
        }

    }
    

    
    
}




















