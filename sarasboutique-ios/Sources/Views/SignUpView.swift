//
//  SignUpView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-10-30.
//

import SwiftUI
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseDatabaseInternal

struct SignUpView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var path = NavigationPath()
    private let userController = UserController()
    private var authController = AuthController()
    
    var ref: DatabaseReference = Database.database().reference()

    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Text("Welcome to Saras Boutique!")
                    .font(.title)
                    .padding()
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                Spacer()
                TextField("First Name", text: self.$firstName)
                    .padding()
                    .background(.ultraThinMaterial)
                    .shadow(radius: 5)
                    .cornerRadius(10)
                TextField("Last Name", text: self.$lastName)
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
                Button(action: {
                    signUp()
                }) {
                    Text("Sign Up")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .foregroundColor(Color.white)
                        .background(Color.blue)
                        .cornerRadius(30)
                }
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
                    authController.handleGoogleSignUp { isSuccess in
                        if isSuccess {
                            print("Sign in successful!")
                            path.append("LoginView")
                            // Perform actions for a successful sign-in
                        } else {
                            print("Sign in failed.")
                            // Handle the failure case, show an alert, etc.
                        }
                    }

                }
                Button (action: {}) {
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
            .navigationDestination(for: String.self) { destination in
                if destination == "LoginView" {
                    LoginView()
                        .navigationBarBackButtonHidden()
                }
            }
        }
    }
    
    func signUp() {
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            
            let db = Firestore.firestore()
            
            if let error = error {
                print(error)
                
            } else {
                // Create User object
                var user = User(userId: "", firstName: firstName, lastName: lastName, email: email)
                
                // Call the register function with the User object
                userController.register(user: user) { result in
                    DispatchQueue.main.async {
                        switch result {
                        case .success:
                            print("User successfully registered")
                            path.append("LoginView")
                        case .failure(let error):
                            print("Error registering user: \(error.localizedDescription)")
                        }
                    }
                }
                
            }
            
            
        }
    }
}

#Preview {
    SignUpView()
}
