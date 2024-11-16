//
//  BioAuthController.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-08.
//

import Foundation
import LocalAuthentication

class AuthenticationViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var authenticationError: String?

    // Handle Face ID authentication
    func authenticateWithFaceID() {
        let context = LAContext()
        var error: NSError?

        // Check Face ID or Touch ID is available
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "Please authenticate to access the app."

            // Attempt Face ID authentication
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { [weak self] success, authError in
                DispatchQueue.main.async {
                    if success {
                        // Authentication successful
                        self?.isAuthenticated = true
                    } else {
                        // Authentication failed
                        self?.authenticationError = authError?.localizedDescription
                        self?.isAuthenticated = false
                    }
                }
            }
        } else {
            // Face ID is not available on device or not set up
            authenticationError = "Face ID not available on this device."
            isAuthenticated = false
        }
    }
}
