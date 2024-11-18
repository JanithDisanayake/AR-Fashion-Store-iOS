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
    func handleSignInButton() {
        
        guard let presentingViewController = (UIApplication.shared.connectedScenes.first as? UIWindowScene)?.windows.first?.rootViewController else {return}
        
        GIDSignIn.sharedInstance.signIn(
            withPresenting: presentingViewController) { signInResult, error in
                guard let result = signInResult else {
                    // Inspect error
                    return
                }
                print("Sign In")
            }
    }
}
