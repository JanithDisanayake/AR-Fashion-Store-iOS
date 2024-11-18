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

}
