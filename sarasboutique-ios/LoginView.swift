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
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome Back to Saras Boutique!")
                    .font(.title)
                    .padding()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
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
                Spacer()
                NavigationLink(
                    destination:
                        MainView()
                        .navigationBarBackButtonHidden(true)
                ) {
                    Text("Login")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
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
            .padding(30)
        }
    }
}

#Preview {
    LoginView()
}
