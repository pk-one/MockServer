//
//  AddReviewRequest.swift
//  
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor

struct AddReviewRequest: Content {
    var id_user: Int
    var text: String
}
