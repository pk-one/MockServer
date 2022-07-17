//
//  RemoveReviewResponse.swift
//  
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor
import Fluent

struct RemoveReviewResponse: Content {
    var result: Int
    var error_message: String?
}
