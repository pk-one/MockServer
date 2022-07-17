//
//  AddToBasketRequest.swift
//  
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor

struct AddToBasketRequest: Content {
    var id_product: Int
    var quantity: Int
}
