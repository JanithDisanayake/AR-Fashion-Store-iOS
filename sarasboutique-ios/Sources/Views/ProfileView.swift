//
//  ProfileView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack() {
          Group {
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
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 40, height: 40)
                .background(Color(red: 1, green: 0.99, blue: 0.99))
                .cornerRadius(50)
                .offset(x: -164, y: -370)
              Rectangle()
                .foregroundColor(.clear)
                .frame(width: 40, height: 40)
                .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0))
                .cornerRadius(50)
                .offset(x: 163, y: -370)
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
              
              Text("sidiyago")
                .font(Font.custom("Outfit", size: 20).weight(.medium))
                .foregroundColor(Color(red: 1, green: 1, blue: 1).opacity(0.90))
                .offset(x: -0.50, y: -370)
              VStack {
                  Text("Personal Informations")
                    .font(Font.custom("Outfit", size: 14).weight(.medium))
                  // Row 1
                  HStack {
                      Text("Name")
                          .fontWeight(.bold)
                          .frame(maxWidth: 100, alignment: .leading)
                          .padding()

                      Text("Sid Diyago")
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .padding()
                          .cornerRadius(8)
                  }

                  // Row 2
                  HStack {
                      Text("Email")
                          .fontWeight(.bold)
                          .frame(maxWidth: 100, alignment: .leading)
                          .padding()

                      Text("siddxd@growthx.com")
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .padding()
                          .cornerRadius(8)
                  }
                  
                  // Empty Row (Spacer)
//                  Spacer().frame(height: 40)

              }
              .padding()
              .offset(x: -0.50, y: 20)
              .frame(width: 400, height: 10)

            
            
            
            Text("Payment Information")
              .font(Font.custom("Outfit", size: 14).weight(.medium))
              .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13).opacity(0.90))
              .offset(x: -78, y: 122.50)
            
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 40, height: 40)
              .background(Color(red: 1, green: 0.99, blue: 0.99))
              .cornerRadius(50)
              .offset(x: 163, y: -420)
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
          }; Group {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 35, height: 35)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/35x35"))
              )
              .cornerRadius(14)
              .offset(x: -163.50, y: -420.50)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 30, height: 30)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/30x30"))
              )
              .offset(x: 163, y: -420)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
              )
              .offset(x: 174, y: -70)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 24, height: 24)
              .background(
                AsyncImage(url: URL(string: "https://via.placeholder.com/24x24"))
              )
              .offset(x: 174, y: 123)
          }
        }
        .frame(width: 440, height: 956)
        .background(.white)
        
    }
}

#Preview {
    ProfileView()
}
