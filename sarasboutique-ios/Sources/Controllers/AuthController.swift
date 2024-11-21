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

class AuthController : ObservableObject {
    private let userController = UserController()
    
    func handleSignInButton(completion: @escaping (Bool) -> Void) {
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {
            completion(false)
            return
        }
        
        GIDSignIn.sharedInstance.signIn(withPresenting: presentingViewController) { signInResult, error in
            if let result = signInResult {
                print("Sign In")
                // Call the completion handler with true to indicate success
                completion(true)
            } else {
                // Inspect error if needed
                print("Error during sign in:", error?.localizedDescription ?? "Unknown error")
                // Call the completion handler with false to indicate failure
                completion(false)
            }
        }
    }
    
    func handleSignUpButton(completion: @escaping (Bool) -> Void) {
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

}
