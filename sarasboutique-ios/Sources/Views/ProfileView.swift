//
//  ProfileView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct ProfileView: View {
    @State private var userData = User(
        userId: "",
        firstName: "",
        lastName: "",
        email: ""
    ) 

    
    var body: some View {
        ZStack() {
                //            ZStack() {
                //              Rectangle()
                //                .foregroundColor(.clear)
                //                .frame(width: 440, height: 80)
                //                .background(.white)
                //                .cornerRadius(33.50)
                //                .offset(x: 0, y: 0)
                //                .shadow(
                //                  color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 40, y: 4
                //                )
                //            }
                //            .frame(width: 440, height: 80)
                //            .offset(x: 0, y: 438)
                //            .shadow(
                //              color: Color(red: 0, green: 0, blue: 0, opacity: 0.25), radius: 4, y: 4
                //            )
                
                ZStack() {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 440, height: 285)
                        .background(Color(red: 0, green: 0.07, blue: 0.24))
                        .offset(x: 0, y: -285.50)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 40, height: 40)
//                        .background(Color(red: 1, green: 0.99, blue: 0.99))
//                        .cornerRadius(50)
//                        .offset(x: -164, y: -370)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(width: 40, height: 40)
//                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0))
//                        .cornerRadius(50)
//                        .offset(x: 163, y: -370)
                    HStack(alignment: .top, spacing: 10) {
                        ZStack() {
                            ZStack() {
                                Ellipse()
                                    .foregroundColor(.clear)
                                    .frame(width: 7.56, height: 7.53)
                                    .overlay(
                                        Ellipse()
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                                    )
                                    .offset(x: -4.72, y: -4.24)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 7.56, height: 0)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                                    )
                                    .offset(x: 4.72, y: -4.24)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 7.56, height: 0)
                                    .overlay(
                                        Rectangle()
                                            .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                                    )
                                    .offset(x: 2.83, y: 4.24)
                                    .rotationEffect(.degrees(-180))
                                Ellipse()
                                    .foregroundColor(.clear)
                                    .frame(width: 7.56, height: 7.53)
                                    .overlay(
                                        Ellipse()
                                            .inset(by: 1)
                                            .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                                    )
                                    .offset(x: 12.28, y: 11.76)
                                    .rotationEffect(.degrees(-180))
                            }
                            .frame(width: 17, height: 16)
                            .offset(x: 0, y: 0)
                        }
                        .frame(width: 17, height: 16)
                    }
                    .offset(x: -175.50, y: -319)
                }
                .frame(width: 440, height: 856)
                .background(.white)
                .offset(x: 0, y: -50)
                
                Text("Welcome \(userData.firstName) !")
                    .font(Font.custom("Outfit", size: 20).weight(.medium))
                    .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.90))
                    .offset(x: -0.50, y: -370)
//                Rectangle()
//                    .foregroundColor(.clear)
//                    .frame(width: 40, height: 40)
//                    .background(Color(red: 1, green: 0.99, blue: 0.99))
//                    .cornerRadius(50)
//                    .offset(x: 163, y: -420)
                Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 209.33, height: 200)
                    .background(
                        AsyncImage(url: URL(string: "https://via.placeholder.com/209x200"))
                    )
                    .overlay(
                        Ellipse()
                            .inset(by: 0.29)
                            .stroke(Color(red: 0.97, green: 0.97, blue: 1), lineWidth: 0.29)
                    )
                    .offset(x: -0.34, y: -235)
                    .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 2.32, y: 1.16
                    )
                
                
                VStack {
                    
                    VStack {
                        Text("Personal Informations")
                            .font(Font.custom("Outfit", size: 20).weight(.medium))
                            .padding(20)
                        
                        HStack {
                            Text("Name")
                                .fontWeight(.bold)
                                .frame(maxWidth: 100, alignment: .leading)
                                .padding()
                            
                            Text("\(userData.firstName) \(userData.lastName)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .cornerRadius(8)
                        }
                        HStack {
                            Text("Email")
                                .fontWeight(.bold)
                                .frame(maxWidth: 100, alignment: .leading)
                                .padding()
                            
                            Text("\(userData.email)")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding()
                                .cornerRadius(8)
                        }
                        
                    }
                    
                    // Empty Row (Spacer)
                    //                  Spacer().frame(height: 40)
                    
                    VStack {
                        HStack {
                            Text("Payment Information")
                                .font(Font.custom("Outfit", size: 20).weight(.medium))
                        }
                        .offset(y: 20)
                        
                        VStack() {
                            
                            ZStack() {
                                Text("XXXX XXXX XXXXX XXXXX 1234")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 47.50, y: -18)
                                Text("EXP")
                                    .font(Font.custom("Outfit", size: 14).weight(.light))
                                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.70))
                                    .offset(x: -33, y: 17.50)
                                Text("12/25")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 0, y: 17.50)
                                Text("CVC")
                                    .font(Font.custom("Outfit", size: 14).weight(.light))
                                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.70))
                                    .offset(x: 80, y: 15.50)
                                Text("001")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 109, y: 16)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 76, height: 61)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/76x61"))
                                    )
                                    .offset(x: -132.50, y: 0)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 20, height: 19)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/20x19"))
                                    )
                                    .offset(x: -112.50, y: 16)
                            }
                            .frame(width: 373, height: 87)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .inset(by: 0.29)
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.15), lineWidth: 0.29
                                    )
                            )
                            .shadow(
                                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 1.16, y: 1.16
                            )
                            
                            ZStack() {
                                Text("XXXX XXXX XXXXX XXXXX 1234")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 47.50, y: -18)
                                Text("EXP")
                                    .font(Font.custom("Outfit", size: 14).weight(.light))
                                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.70))
                                    .offset(x: -33, y: 17.50)
                                Text("12/25")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 0, y: 17.50)
                                Text("CVC")
                                    .font(Font.custom("Outfit", size: 14).weight(.light))
                                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12).opacity(0.70))
                                    .offset(x: 80, y: 15.50)
                                Text("001")
                                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                                    .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
                                    .offset(x: 109, y: 16)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 76, height: 61)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/76x61"))
                                    )
                                    .offset(x: -132.50, y: 0)
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 20, height: 19)
                                    .background(
                                        AsyncImage(url: URL(string: "https://via.placeholder.com/20x19"))
                                    )
                                    .offset(x: -112.50, y: 16)
                            }
                            .frame(width: 373, height: 87)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .inset(by: 0.29)
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.15), lineWidth: 0.29
                                    )
                            )
                            .shadow(
                                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 1.16, y: 1.16
                            )
                        }
                        .padding(50)
                        
                    }
                    
                }
                .padding()
                .offset(x: -0.50, y: 150)
                .frame(width: 400, height: .infinity)
                
              
            
        }
        .frame(width: 440, height: .infinity)
        .background(.white)
        .onAppear() {
            userData = UserDataManager.shared.getUserData()
            
            print("User Data:")
            print("User ID: \(userData.userId)")
            print("First Name: \(userData.firstName)")
            print("Last Name: \(userData.lastName)")
            print("Email: \(userData.email)")
        }
    }
}

#Preview {
    ProfileView()
}
