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
                db.collection("users").document().setData([
                    "firstName": firstName,
                    "lastName": lastName,
                    "email": email
                ]) {  error in
                    if let error = error {
                        print("Error writing document: \(error)")
                        
                    } else {
                        print("Document successfully written!")
                        path.append("LoginView")
                        
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    SignUpView()
}
