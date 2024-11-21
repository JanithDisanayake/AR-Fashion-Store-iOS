//
//  User.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-16.
//

import Foundation

struct User: Codable {
    var userId: String
    var firstName: String
    var lastName: String
    var email: String
    
    static let sample = User(
        userId: "No user id", 
        firstName: "No first name",
        lastName: "No last name",
        email: "No email"
    )
}
