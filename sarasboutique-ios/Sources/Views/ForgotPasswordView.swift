//
//  ForgotPasswordView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-13.
//

import SwiftUI

struct ForgotPasswordView: View {
    var body: some View {
        ZStack() {
          HStack(alignment: .top, spacing: 103) {
            HStack(spacing: 0) {

            }
            .padding(EdgeInsets(top: 6, leading: 0, bottom: 6, trailing: 0))
            .frame(width: 24, height: 24)
          }
          .offset(x: -191, y: -416)
          Text("Forgot Password")
            .font(Font.custom("Poppins", size: 14).weight(.medium))
            .foregroundColor(Color(red: 0.12, green: 0.16, blue: 0.26))
            .offset(x: 0.50, y: -416.50)
          HStack(alignment: .top, spacing: 10) {
            HStack(spacing: 0) {

            }
            .padding(EdgeInsets(top: 6, leading: 8, bottom: 6, trailing: 8))
            .frame(width: 48, height: 48)
          }
          .padding(EdgeInsets(top: 13, leading: 14, bottom: 13, trailing: 14))
          .frame(width: 74, height: 74)
          .background(Color(red: 0.94, green: 0.94, blue: 0.98))
          .cornerRadius(10)
          .offset(x: 0, y: -293)
          VStack(spacing: 24) {
            VStack(spacing: 48) {
              VStack(spacing: 6) {
                VStack(spacing: 12) {
                  VStack(spacing: 4) {
                    Text("Set New Password")
                      .font(Font.custom("Poppins", size: 36).weight(.semibold))
                      .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                  }
                }
                VStack(spacing: 12) {
                  VStack(spacing: 4) {
                    Text("your new password  must be different\nto previously used Passwords.")
                      .font(Font.custom("Poppins", size: 20))
                      .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                  }
                }
              }
            }
          }
          .frame(height: 120)
          .offset(x: 0.50, y: -120)
          VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading, spacing: 12) {
              VStack(alignment: .leading, spacing: 6) {
                Text("New Password*")
                  .font(Font.custom("Poppins", size: 16))
                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 339, height: 44)
                  .background(.white)
                  .cornerRadius(10)
                  .overlay(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(Color(red: 0.73, green: 0.73, blue: 0.73), lineWidth: 0.50)
                  )
                Text("Enter your email address")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
              }
              VStack(alignment: .leading, spacing: 6) {
                Text("Confirm Password*")
                  .font(Font.custom("Poppins", size: 16))
                  .foregroundColor(Color(red: 0.31, green: 0.31, blue: 0.31))
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 339, height: 44)
                  .background(.white)
                  .cornerRadius(10)
                  .overlay(
                    RoundedRectangle(cornerRadius: 10)
                      .stroke(Color(red: 0.73, green: 0.73, blue: 0.73), lineWidth: 0.50)
                  )
                Text("Create a password")
                  .font(Font.custom("Poppins", size: 12))
                  .foregroundColor(Color(red: 0.42, green: 0.42, blue: 0.42))
              }
            }
            VStack(alignment: .leading, spacing: 12) {
              HStack(spacing: 34) {
                HStack(spacing: 6) {
                  VStack(alignment: .leading, spacing: 10) {

                  }
                  .padding(EdgeInsets(top: 4, leading: 3, bottom: 4, trailing: 3))
                  .background(Color(red: 0.37, green: 0.38, blue: 0.86))
                  .cornerRadius(17)
                  Text("Must be at list 8 chractes")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(Color(red: 0.14, green: 0.14, blue: 0.14))
                }
              }
              HStack(spacing: 34) {
                HStack(spacing: 6) {
                  VStack(alignment: .leading, spacing: 10) {

                  }
                  .padding(EdgeInsets(top: 4, leading: 3, bottom: 4, trailing: 3))
                  .background(Color(red: 0.37, green: 0.38, blue: 0.86))
                  .cornerRadius(17)
                  Text("Must contain one special character")
                    .font(Font.custom("Poppins", size: 12))
                    .foregroundColor(Color(red: 0.14, green: 0.14, blue: 0.14))
                }
              }
            }
          }
          .offset(x: 0.50, y: 128)
          VStack(spacing: 24) {
            VStack(alignment: .leading, spacing: 16) {
              HStack(spacing: 10) {
                Text("Submit")
                  .font(Font.custom("Poppins", size: 14).weight(.medium))
                  .foregroundColor(.white)
              }
              .padding(10)
              .frame(width: 341, height: 44)
              .background(Color(red: 0, green: 0.07, blue: 0.24))
              .cornerRadius(23)
            }
          }
          .offset(x: 0.50, y: 424)
        }
        .frame(width: 440, height: 956)
        .background(.white)
    }
}

#Preview {
    ForgotPasswordView()
}
