//
//  BasketController.swift
//  
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor

class BasketController {
    func addToBasket(_ req: Request) throws -> EventLoopFuture<AddToBasketResponse> {
        guard let body = try? req.content.decode(AddToBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = AddToBasketResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func deleteFromBasket(_ req: Request) throws -> EventLoopFuture<DeleteFromBasketResponse> {
        guard let body = try? req.content.decode(DeleteFromBasketRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = DeleteFromBasketResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
}
