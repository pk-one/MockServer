//
//  AuthResponse.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Vapor
import Fluent

struct AuthResponse: Content {
    var result: Int
    var user: User
    var error_message: String?
}
