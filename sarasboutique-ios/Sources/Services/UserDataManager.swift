//
//  UserDataManager.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-21.
//

import Foundation

class UserDataManager {
    static let shared = UserDataManager() // Singleton instance

    private let firstNameKey = "firstName"
    private let lastNameKey = "lastName"
    private let emailKey = "email"
    private let userIdKey = "userId"

    private init() {}

    // Save user data
    func saveUser(user: User) {
        UserDefaults.standard.set(user.firstName, forKey: firstNameKey)
        UserDefaults.standard.set(user.lastName, forKey: lastNameKey)
        UserDefaults.standard.set(user.email, forKey: emailKey)
        UserDefaults.standard.set(user.userId, forKey: userIdKey)
    }

    // Fetch user data
    func getUserData() -> User {
        let firstName = UserDefaults.standard.string(forKey: firstNameKey) ?? ""
        let lastName = UserDefaults.standard.string(forKey: lastNameKey) ?? ""
        let email = UserDefaults.standard.string(forKey: emailKey) ?? ""
        let userId = UserDefaults.standard.string(forKey: userIdKey) ?? ""

        return User(userId: userId, firstName: firstName, lastName: lastName, email: email)
    }


    // Clear user data
    func clearUserData() {
        UserDefaults.standard.removeObject(forKey: firstNameKey)
        UserDefaults.standard.removeObject(forKey: lastNameKey)
        UserDefaults.standard.removeObject(forKey: emailKey)
        UserDefaults.standard.removeObject(forKey: userIdKey)
    }
}
