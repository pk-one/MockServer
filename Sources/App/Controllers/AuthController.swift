//
//  AuthController.swift
//  
//
//  Created by Pavel Olegovich on 09.07.2022.
//

import Vapor

class AuthController {
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let body = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = RegisterResponse(
            result: 1,
            user_message: "Регистрация прошла успешно!",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func auth(_ req: Request) throws -> EventLoopFuture<AuthResponse> {
        guard let body = try? req.content.decode(AuthRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = AuthResponse(
            result: 1,
            user: User(id_user: 123,
                       user_login: "geekbrains",
                       user_name: "John",
                       user_lastname: "Doe"),
            error_message: nil)
        return req.eventLoop.future(response)
    }
}
