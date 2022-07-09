//
//  File.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Vapor

struct RegisterResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
