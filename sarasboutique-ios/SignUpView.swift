//
//  SignUpView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-10-30.
//

import SwiftUI

struct SignUpView: View {
    @State private var first_name = ""
    @State private var last_name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Welcome to Saras Boutique!")
                    .font(.title)
                    .padding()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                TextField("First Name", text: self.$first_name)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10)
                TextField("Last Name", text: self.$last_name)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10)
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
                SecureField("Confirm Password", text: self.$confirmPassword)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10.0)
                Spacer()
                Text("Sign Up")
                    .font(.system(size: 24, weight: .bold, design: .default))
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                    .cornerRadius(30)
                HStack {
                    Text("Already Have a Account")
                    NavigationLink(
                        destination:
                            LoginView()
                            .navigationBarBackButtonHidden(true)
                    ) {
                        Text("Login")
                            .foregroundStyle(.blue)
                    }
                }
            }
            .padding(30)
        }
    }
}

#Preview {
    SignUpView()
}
