//
//  File.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Foundation
import Vapor

struct User: Content {
    let id_user: Int
    let user_login: String
    let user_name: String
    let user_lastname: String
}
