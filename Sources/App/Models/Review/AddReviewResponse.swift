//
//  AddReviewResponse.swift
//  
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor
import Fluent

struct AddReviewResponse: Content {
    var result: Int
    var user_message: String?
    var error_message: String?
}
