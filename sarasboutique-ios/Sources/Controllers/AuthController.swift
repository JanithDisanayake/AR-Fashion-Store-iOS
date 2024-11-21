//
//  AuthController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-18.
//

import Foundation
import Firebase
import GoogleSignIn
import GoogleSignInSwift
import FirebaseAuth
import AuthenticationServices

class AuthController : ObservableObject {
    private let userController = UserController()
    
    func handleGoogleSignIn(completion: @escaping (Bool) -> Void) {
        var userObj : User?
        
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {
            completion(false)
            return
        }
        
        GIDSignIn.sharedInstance.signIn(withPresenting: presentingViewController) { signInResult, error in
            if let result = signInResult {
                if let userProfile = result.user.profile {
                    let email = result.user.profile?.email ?? "No email"
                    self.userController.getUserByEmail(email: email) { user in
                        if user.userId.isEmpty {
                            completion(false)
                            print("No user found.")
                        } else {
                            userObj = user
                            print("User retrieved: \(user.firstName) \(user.lastName), ID: \(user.userId), Email: \(user.email)")
                            UserDataManager.shared.saveUser(user: userObj ?? user)
                        }
                    }
                }
                print("Sign In \(userObj)")
                completion(true)
                
            } else {
                print("Error during sign in:", error?.localizedDescription ?? "Unknown error")
                completion(false)
            }
        }
    }
    
    func handleGoogleSignUp(completion: @escaping (Bool) -> Void) {
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {
            completion(false)
            return
        }

        GIDSignIn.sharedInstance.signIn(withPresenting: presentingViewController) { signInResult, error in
            if let result = signInResult {
                print("Sign In Successful")

                if let userProfile = result.user.profile {
                    let firstName = userProfile.givenName ?? "No first name"
                    let lastName = userProfile.familyName ?? "No last name"
                    let email = result.user.profile?.email ?? "No email"
                    
                    print("User \(firstName) \(lastName) \(email)")
                    var user = User(userId: "", firstName: firstName, lastName: lastName, email: email)
                    
                    self.userController.register(user: user) { result in
                        DispatchQueue.main.async {
                            switch result {
                            case .success:
                                print("User successfully registered")
                            case .failure(let error):
                                print("Error registering user: \(error.localizedDescription)")
                            }
                        }
                    }
                }
                completion(true)
            } else {
                print("Error during sign in:", error?.localizedDescription ?? "Unknown error")
                completion(false)
            }
        }
    }
    
    func handleEmailSignIn(email: String, password: String, completion: @escaping (Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Sign-in failed with error: \(error.localizedDescription)")
                completion(false)
            } else {
                print("Sign-in successful for user: \(authResult?.user.email ?? "unknown")")
                self.userController.getUserByEmail(email: email) { user in
                    if user.userId.isEmpty {
                        completion(false)
                        print("No user found.")
                    } else {
                        let userObj = user
                        print("User retrieved: \(user.firstName) \(user.lastName), ID: \(user.userId), Email: \(user.email)")
                        UserDataManager.shared.saveUser(user: userObj ?? user)
                    }
                }
                completion(true)
            }
        }
    }
}
