//
//  AuthRequest.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Vapor

struct AuthRequest: Content {
    var username: String
    var password: String
}
