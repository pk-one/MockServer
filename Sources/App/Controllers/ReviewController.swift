//
//  ReviewController.swift
//
//
//  Created by Pavel Kruchinin on 17.07.2022.
//

import Vapor

class ReviewController {
    func addReview(_ req: Request) throws -> EventLoopFuture<AddReviewResponse> {
        guard let body = try? req.content.decode(AddReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = AddReviewResponse(
            result: 1,
            user_message: "Ваш отзыв был передан на модерацию",
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func approveReview(_ req: Request) throws -> EventLoopFuture<ApproveReviewResponse> {
        guard let body = try? req.content.decode(ApproveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = ApproveReviewResponse(
            result: 1,
            error_message: nil
        )
        return req.eventLoop.future(response)
    }
    
    func removeReview(_ req: Request) throws -> EventLoopFuture<RemoveReviewResponse> {
        guard let body = try? req.content.decode(RemoveReviewRequest.self) else {
            throw Abort(.badRequest)
        }
        print(body)
        let response = RemoveReviewResponse(
            result: 1,
            error_message: nil)
        return req.eventLoop.future(response)
    }
}
