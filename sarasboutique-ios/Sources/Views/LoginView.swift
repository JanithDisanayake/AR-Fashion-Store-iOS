//
//  LoginView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-10-28.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedIn = false
    @State private var path = NavigationPath()
    @StateObject private var authViewModel = AuthenticationViewModel()

    
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
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                }
                Text("---------- or ----------")
                NavigationLink(
                    destination:
                        MainView()
                        .navigationBarBackButtonHidden(true)
                ) {
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
                    .frame(maxHeight: 50)
                }
                NavigationLink(
                    destination:
                        MainView()
                        .navigationBarBackButtonHidden(true)
                ) {
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
                    .frame(maxHeight: 50)
                }
                NavigationLink(
                    destination:
                        MainView()
                        .navigationBarBackButtonHidden(true)
                ) {
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
                    .frame(maxHeight: 50)
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
        }
    }
    
    func login(email: String, password: String) {
        if email == "Admin" && password == "password" {
            authViewModel.authenticateWithFaceID()
            if authViewModel.isAuthenticated {
                path.append("MainView")
            }
        } else {
            print("Invalid credentials")
        }
    }
}

#Preview {
    LoginView()
}
