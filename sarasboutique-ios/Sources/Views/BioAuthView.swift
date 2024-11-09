//
//  BioAuthView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-08.
//

import SwiftUI

struct BioAuthView: View {
    @StateObject private var authViewModel = AuthenticationViewModel()

        var body: some View {
            VStack {
                if authViewModel.isAuthenticated {
                    Text("Welcome to the app!")
                        .font(.largeTitle)
                        .foregroundColor(.green)
                } else {
                    Text("Please authenticate")
                        .font(.title)
                        .foregroundColor(.red)
                        .padding()

                    Button(action: {
                        authViewModel.authenticateWithFaceID()
                    }) {
                        Text("Login with Face ID")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()

                    // Display error if authentication fails
                    if let error = authViewModel.authenticationError {
                        Text(error)
                            .foregroundColor(.red)
                            .padding()
                    }
                }
            }
            .padding()
        }
}

#Preview {
    BioAuthView()
}
