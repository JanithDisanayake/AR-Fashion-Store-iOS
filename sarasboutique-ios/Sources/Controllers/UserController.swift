//
//  UserController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-16.
//

import Foundation
import FirebaseFirestore

class UserController {
    private let db = Firestore.firestore()
    private let collection = "users"
    
    // Register a new user in Firestore using the User model
    func register(user: User, completion: @escaping (Result<Void, Error>) -> Void) {
        do {
            let userId = db.collection(collection).document().documentID
            
            try db.collection(collection).document(userId).setData([
                "userId": userId,
                "firstName": user.firstName,
                "lastName": user.lastName,
                "email": user.email
            ]) { error in
                if let error = error {
                    completion(.failure(error)) // Return failure if an error occurs
                } else {
                    completion(.success(())) // Return success if the document is successfully written
                }
            }
        } catch {
            completion(.failure(error)) // Catch any errors while encoding the User object
        }
    }
}
