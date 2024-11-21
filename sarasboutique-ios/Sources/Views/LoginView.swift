//
//  LoginView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-10-28.
//

import SwiftUI
import Firebase
import FirebaseAuth
import AuthenticationServices

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var path = NavigationPath()
    @State var isAuthenticated = false
    @State var errorMessage: String?
    @StateObject private var authViewModel = AuthenticationViewModel()
    @StateObject private var authController = AuthController()
    @State var notificationController = NotificationController()

    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("Welcome Back !")
                    .font(.title)
                    .padding()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Image(.sarasbotiqueLogo)
                TextField("Email", text: self.$email)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10)
                SecureField("Password", text: self.$password)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10.0)
                Text("Forgot Password ?")
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.leading, 20)
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
                    .frame(height:30)
                
                Button(action: {
                    login(email: email, password: password)
                }) {
                    Text("Login")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, minHeight: 60, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                }
                Text("---------- or ----------")
                
//                SignInWithAppleButton(.signIn) { request in
//                    request.requestedScopes = [.fullName, .email]
//                } onCompletion: { result in
//                    switch result {
//                    case .success(let authorization):
//                        handleSuccessfulLogin(with: authorization)
//                    case .failure(let error):
//                        handleLoginError(with: error)
//                    }
//                }
//                .signInWithAppleButtonStyle(.whiteOutline)
//                .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50, alignment: .leading)
//                .cornerRadius(30)
//                .padding()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 2) // Set the border color and width here
                    HStack(alignment: .center, spacing: 25) {
                        Image(systemName: "apple.logo")
                            .font(.title)
                            .foregroundColor(.black)
                            .frame(width: 32, height: 32)
                        Text("Continue with Apple")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.black)
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                }
                .frame(minHeight: 50, maxHeight: 50)
                .onTapGesture {
                    
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.gray, lineWidth: 2) // Set the border color and width here
                    HStack(alignment: .center, spacing: 25) {
                        Image(.googleLogo)
                            .resizable()
                            .frame(width: 32, height: 32)
                        Text("Continue with Google")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color.black)
                    }
                    .font(.system(size: 16))
                    .foregroundColor(.blue)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 20)
                }
                .frame(minHeight: 50, maxHeight: 50)
                .onTapGesture {
                    authController.handleSignInButton { isSuccess in
                        if isSuccess {
                            print("Sign in successful!")
                            path.append("MainView")
                            // Perform actions for a successful sign-in
                        } else {
                            print("Sign in failed.")
                            // Handle the failure case, show an alert, etc.
                        }
                    }

                }
                Button (action: {
                    NotificationManager.shared.scheduleNotification(
                        title: "Hello!",
                        body: "You've clicked the button.",
                        delay: 5
                    )
                }) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 30)
                            .stroke(Color.gray, lineWidth: 2) // Set the border color and width here
                        HStack(alignment: .center, spacing: 25) {
                            Image(.facebookLogo)
                                .resizable()
                                .frame(width: 32, height: 32)
                            Text("Continue with Facebook")
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .foregroundColor(Color.black)
                        }
                        .font(.system(size: 16))
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 20)
                    }
                    .frame(minHeight: 50, maxHeight: 50)
                }
                HStack {
                    Text("Don't Have a Account")
                    NavigationLink(
                        destination:
                            SignUpView()
                            .navigationBarBackButtonHidden(true)
                    ) {
                        Text("Sign Up")
                            .foregroundStyle(.blue)
                    }
                }
            }
            .padding(.horizontal, 40)
            .navigationDestination(for: String.self) { destination in
                if destination == "MainView" {
                    MainView()
                        .navigationBarBackButtonHidden()
                }
            }
            .onAppear() {
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    if settings.authorizationStatus != .authorized {
                        print("Notifications are not authorized.")
                    }
                }
            }
        }
    }
    
    func login(email: String, password: String) {
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print(error)
            } else {
                authViewModel.authenticateWithFaceID()
                if authViewModel.isAuthenticated {
                    path.append("MainView")
                } else {
                    print("Authentication failed")
                }
            }
        }
    }
    private func handleSuccessfulLogin(with authorization: ASAuthorization) {
        if let userCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            print(userCredential.user)
            
            if userCredential.authorizedScopes.contains(.fullName) {
                print(userCredential.fullName?.givenName ?? "No given name")
            }
            
            if userCredential.authorizedScopes.contains(.email) {
                print(userCredential.email ?? "No email")
            }
        }
    }
    
    private func handleLoginError(with error: Error) {
        print("Could not authenticate: \\(error.localizedDescription)")
    }
}

#Preview {
    LoginView()
}
