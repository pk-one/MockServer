//
//  RegisterRequest.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Vapor

struct RegisterRequest: Content {
    var id_user: Int
    var username: String
    var password: String
    var email: String
    var gender: String
    var credit_card: String
    var bio: String
}

