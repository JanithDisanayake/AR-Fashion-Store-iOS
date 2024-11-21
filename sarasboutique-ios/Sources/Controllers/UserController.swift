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
                    completion(.failure(error))
                } else {
                    completion(.success(()))
                }
            }
        } catch {
            completion(.failure(error)) // Catch any errors while encoding the User object
        }
    }
    
    func getUserByEmail(email: String, completion: @escaping (User) -> Void) {
        db.collection(collection)
            .whereField("email", isEqualTo: email)
            .getDocuments { snapshot, error in
                if let error = error {
                    print("Error fetching user: \(error.localizedDescription)")
                    completion(User(userId: "", firstName: "", lastName: "", email: "")) // Return an empty user
                    return
                }
                
                guard let documents = snapshot?.documents, let document = documents.first else {
                    print("No user found with the given email.")
                    completion(User(userId: "", firstName: "", lastName: "", email: "")) // Return an empty user
                    return
                }
                
                do {
                    let user = try document.data(as: User.self)
                    completion(user) // Return the retrieved user
                } catch {
                    print("Error decoding user: \(error.localizedDescription)")
                    completion(User(userId: "", firstName: "", lastName: "", email: "")) // Return an empty user
                }
            }
    }



}
