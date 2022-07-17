import Fluent
import Vapor

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    let authController = AuthController()
    app.post("register", use: authController.register)
    app.post("auth", use: authController.auth)
    
    let reviewController = ReviewController()
    app.post("addReview", use: reviewController.addReview)
    app.post("approveReview", use: reviewController.approveReview)
    app.post("removeReview", use: reviewController.removeReview)
    
    try app.register(collection: TodoController())
}
