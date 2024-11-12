//
//  CartView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-04.
//

import SwiftUI

struct CartView: View {
    var body: some View {
        ZStack() {
          VStack(alignment: .leading, spacing: 260) {
            VStack(alignment: .leading, spacing: 18) {
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 412, height: 99)
                  .background(.white)
                  .cornerRadius(8)
                  .offset(x: 0, y: 0)
                  .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                  )
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 412, height: 99)
                  .background(.white)
                  .cornerRadius(8)
                  .offset(x: 0, y: 0)
                  .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                  )
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 130.04, height: 99)
                    .background(.white)
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                    .shadow(
                      color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                    )
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 130.04, height: 99)
                    .background(
                      AsyncImage(url: URL(string: "https://via.placeholder.com/130x99"))
                    )
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                }
                .frame(width: 130.04, height: 99)
                .offset(x: -140.98, y: 0)
                Text("Hot Pants")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -19.45, y: -27)
                Text("Women Style")
                  .font(Font.custom("Poppins", size: 8).weight(.medium))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -28.56, y: -10.50)
                  .opacity(0.50)
                Text("$129,99")
                  .font(Font.custom("Poppins", size: 20).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -15.80, y: 22.50)
                ZStack() {
                  Text("1")
                    .font(Font.custom("Roboto", size: 12).weight(.bold))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 0, y: -0.71)
                  Text("+")
                    .font(Font.custom("Roboto", size: 12).weight(.medium))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 25.24, y: -0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 83.86, height: 22)
                    .cornerRadius(20)
                    .overlay(
                      RoundedRectangle(cornerRadius: 20)
                        .inset(by: 0.50)
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.50
                        )
                    )
                    .offset(x: 0, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 7.70, height: 0)
                    .overlay(
                      Rectangle()
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.75
                        )
                    )
                    .offset(x: -25.24, y: 1.06)
                }
                .frame(width: 83.86, height: 22)
                .offset(x: 142.19, y: 26.50)
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 20, height: 20)
                    .background(Color(red: 0.07, green: 0, blue: 0.84))
                    .cornerRadius(4)
                    .offset(x: -2.15, y: 0)
                }
                .frame(width: 24.31, height: 20)
                .offset(x: 167.11, y: -23.50)
              }
              .frame(maxWidth: .infinity, minHeight: 99, maxHeight: 99)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 412, height: 99)
                  .background(.white)
                  .cornerRadius(8)
                  .offset(x: 0, y: 0)
                  .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                  )
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 107, height: 99)
                    .background(.white)
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                    .shadow(
                      color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                    )
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 107, height: 99)
                    .background(
                      AsyncImage(url: URL(string: "https://via.placeholder.com/107x99"))
                    )
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                }
                .frame(width: 107, height: 99)
                .offset(x: -152.50, y: 0)
                Text("Casual Jeans")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -38.50, y: -27)
                Text("Women Style")
                  .font(Font.custom("Poppins", size: 8).weight(.medium))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -60, y: -10.50)
                  .opacity(0.50)
                Text("$169,89")
                  .font(Font.custom("Poppins", size: 20).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -48.50, y: 22.50)
                ZStack() {
                  Text("1")
                    .font(Font.custom("Roboto", size: 12).weight(.bold))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 0, y: -0.71)
                  Text("+")
                    .font(Font.custom("Roboto", size: 12).weight(.medium))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 20.77, y: -0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 69, height: 22)
                    .cornerRadius(20)
                    .overlay(
                      RoundedRectangle(cornerRadius: 20)
                        .inset(by: 0.50)
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.50
                        )
                    )
                    .offset(x: 0, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 6.34, height: 0)
                    .overlay(
                      Rectangle()
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.75
                        )
                    )
                    .offset(x: -20.77, y: 1.06)
                }
                .frame(width: 69, height: 22)
                .offset(x: 80.50, y: 26.50)
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 20, height: 20)
                    .background(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .cornerRadius(4)
                    .offset(x: 0, y: 0)
                    .opacity(0.50)
                }
                .frame(width: 20, height: 20)
                .offset(x: 101, y: -23.50)
              }
              .frame(width: 412, height: 99)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 412, height: 99)
                  .background(.white)
                  .cornerRadius(8)
                  .offset(x: 0, y: 0)
                  .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                  )
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 130.04, height: 99)
                    .background(.white)
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                    .shadow(
                      color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                    )
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 130.04, height: 99)
                    .background(
                      AsyncImage(url: URL(string: "https://via.placeholder.com/130x99"))
                    )
                    .cornerRadius(8)
                    .offset(x: 0, y: 0)
                }
                .frame(width: 130.04, height: 99)
                .offset(x: -140.98, y: 0)
                Text("Elegant Blazer")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -0, y: -27)
                Text("Women Style")
                  .font(Font.custom("Poppins", size: 8).weight(.medium))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -28.56, y: -10.50)
                  .opacity(0.50)
                Text("$189,89")
                  .font(Font.custom("Poppins", size: 20).weight(.semibold))
                  .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                  .offset(x: -14.58, y: 22.50)
                ZStack() {
                  Text("1")
                    .font(Font.custom("Roboto", size: 12).weight(.bold))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 0, y: -0.71)
                  Text("+")
                    .font(Font.custom("Roboto", size: 12).weight(.medium))
                    .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                    .offset(x: 25.24, y: -0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 83.86, height: 22)
                    .cornerRadius(20)
                    .overlay(
                      RoundedRectangle(cornerRadius: 20)
                        .inset(by: 0.50)
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.50
                        )
                    )
                    .offset(x: 0, y: 0)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 7.70, height: 0)
                    .overlay(
                      Rectangle()
                        .stroke(
                          Color(red: 0, green: 0, blue: 0).opacity(0.50), lineWidth: 0.75
                        )
                    )
                    .offset(x: -25.24, y: 1.06)
                }
                .frame(width: 83.86, height: 22)
                .offset(x: 142.19, y: 26.50)
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 20, height: 20)
                    .background(Color(red: 0.07, green: 0, blue: 0.84))
                    .cornerRadius(4)
                    .offset(x: -2.15, y: 0)
                }
                .frame(width: 24.31, height: 20)
                .offset(x: 167.11, y: -23.50)
              }
              .frame(maxWidth: .infinity, minHeight: 99, maxHeight: 99)
            }
            .frame(maxWidth: .infinity, minHeight: 755, maxHeight: 755)
          }
          .frame(width: 412, height: 761)
          .offset(x: 0, y: 16.50)
          ZStack() {
            HStack(alignment: .top, spacing: 103) {
              Text("Your Cart")
                .font(Font.custom("Poppins", size: 18).weight(.semibold))
                .foregroundColor(.white)
            }
            .offset(x: 5.50, y: -0.50)
            ZStack() { }
            .frame(width: 22, height: 25)
            .offset(x: 187, y: -0.50)
          }
          .frame(width: 440, height: 74)
          .background(Color(red: 0, green: 0.07, blue: 0.24))
          .offset(x: 0, y: -442)
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 440, height: 80)
              .background(.white)
              .cornerRadius(33.50)
              .offset(x: 0, y: 0)
              .shadow(
                color: Color(red: 0, green: 0, blue: 0, opacity: 0.10), radius: 40, y: 4
              )
          }
          .frame(width: 440, height: 80)
          .offset(x: 0, y: 444)
          Text("$299,88")
            .font(Font.custom("Poppins", size: 20).weight(.semibold))
            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
            .offset(x: 152.50, y: 286)
          Text("Total Price")
            .font(Font.custom("Poppins", size: 20).weight(.medium))
            .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
            .offset(x: -128.50, y: 286)
            .opacity(0.50)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 412, height: 55)
            .background(Color(red: 0, green: 0.23, blue: 0.82))
            .cornerRadius(27.50)
            .offset(x: 0, y: 356.50)
          Text("Checkout")
            .font(Font.custom("Poppins", size: 16).weight(.semibold))
            .foregroundColor(.white)
            .offset(x: -0.50, y: 357)
        }
        .frame(width: 440, height: 956)
        .background(.white)
    }
}

#Preview {
    CartView()
}
