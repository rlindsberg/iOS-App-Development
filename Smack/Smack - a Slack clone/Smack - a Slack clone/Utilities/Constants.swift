//
//  Constants.swift
//  Smack - a Slack clone
//
//  Created by Roderick Karlemstrand on 22/07/2018.
//  Copyright © 2018 Roderick Karlemstrand. All rights reserved.
//

import Foundation

//segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let UNWIND_TO_CHN = "unwindToChannelVC"

//auth
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"

//Closure, Alamofire completion handler
typealias CompletionHandler = (_ Success: Bool) -> () //create a "CompletionHandler" type

//Alamofire requests
let CHAT_API = "https://chat-api-rlindsberg.herokuapp.com/v1/"
let URL_REG = "\(CHAT_API)account/register"
