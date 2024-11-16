//
//  HomeView2.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-13.
//

import SwiftUI

struct HomeView2: View {
    var body: some View {
        ZStack() {
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
            ZStack() {
              Ellipse()
                .foregroundColor(.clear)
                .frame(width: 20.77, height: 19.10)
                .background(Color(red: 0.84, green: 0, blue: 0))
                .offset(x: 0, y: 0)
              Text("2")
                .font(Font.custom("Poppins", size: 10).weight(.bold))
                .foregroundColor(.white)
                .offset(x: -0.26, y: -0.96)
            }
            .frame(width: 20.77, height: 19.10)
            .offset(x: 68.14, y: -8.96)
          }
          .frame(width: 440, height: 80)
          .offset(x: 0, y: 438)
          ZStack() {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 440, height: 285)
              .background(Color(red: 0, green: 0.07, blue: 0.24))
              .offset(x: 0, y: -295.50)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 40, height: 40)
              .background(Color(red: 1, green: 0.99, blue: 0.99))
              .cornerRadius(50)
              .offset(x: -164, y: -380)
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 40, height: 40)
              .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0))
              .cornerRadius(50)
              .offset(x: 163, y: -380)
            ZStack() {
              Text("Your Location")
                .font(Font.custom("Poppins", size: 10).weight(.medium))
                .foregroundColor(.white)
                .offset(x: 0.50, y: -9)
              ZStack() {
                Text("New York, England")
                  .font(Font.custom("Poppins", size: 12).weight(.semibold))
                  .foregroundColor(.white)
                  .offset(x: -5.50, y: 0)
              }
              .frame(width: 124, height: 18)
              .offset(x: 0, y: 7.50)
            }
            .frame(height: 33)
            .offset(x: 9, y: -383.50)
            HStack(spacing: 85) {
              ZStack() { }
              .frame(width: 22, height: 25)
            }
            .offset(x: 163, y: -380.50)
            VStack(spacing: 10) {
              ZStack() {
                ZStack() {
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 339, height: 156)
                    .background(Color(red: 0.93, green: 0.93, blue: 0.93))
                    .cornerRadius(20)
                    .offset(x: 3.78, y: -10.75)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 339, height: 156)
                    .background(Color(red: 0.96, green: 0.95, blue: 0.93))
                    .cornerRadius(20)
                    .offset(x: 3.78, y: -10.75)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 115.87, height: 173.81)
                    .background(
                      AsyncImage(url: URL(string: "https://via.placeholder.com/116x174"))
                    )
                    .offset(x: 115.17, y: -16.25)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 93.87, height: 173.81)
                    .background(
                      LinearGradient(gradient: Gradient(colors: [Color(red: 0.96, green: 0.95, blue: 0.93), Color(red: 1, green: 1, blue: 1).opacity(0)]), startPoint: .leading, endPoint: .trailing)
                    )
                    .offset(x: 46.22, y: -19.65)
                  HStack(spacing: 0) {
                    ZStack() {
                      Group {

                      }; Group {

                      }
                    }
                    .frame(width: 53.17, height: 48.91)
                  }
                  .padding(
                    EdgeInsets(top: 2.04, leading: 0.41, bottom: 2.04, trailing: 0.41)
                  )
                  .frame(width: 54, height: 53)
                  .offset(x: -146.28, y: 67.25)
                  HStack(spacing: 0) {
                    ZStack() {
                      Group {

                      }; Group {

                      }
                    }
                    .frame(width: 22.91, height: 21.08)
                  }
                  .padding(
                    EdgeInsets(top: 0.88, leading: 0.18, bottom: 0.88, trailing: 0.18)
                  )
                  .frame(width: 23.27, height: 22.84)
                  .offset(x: -134.11, y: -82.33)
                  .rotationEffect(.degrees(-46.83))
                }
                .frame(width: 346.57, height: 187.50)
                .offset(x: -3.78, y: 12.23)
                VStack(alignment: .leading, spacing: 16) {
                  VStack(alignment: .leading, spacing: 0) {
                    Text("Autumn Sale")
                      .font(Font.custom("Poppins", size: 24).weight(.semibold))
                      .foregroundColor(Color(red: 0.01, green: 0.01, blue: 0.01))
                    Text("Up to 50%")
                      .font(Font.custom("Poppins", size: 16).weight(.semibold))
                      .lineSpacing(19.20)
                      .foregroundColor(Color(red: 0.01, green: 0.01, blue: 0.01))
                  }
                  HStack(spacing: 8) {
                    Text("Buy now")
                      .font(Font.custom("Poppins", size: 14).weight(.medium))
                      .foregroundColor(.white)
                  }
                  .padding(EdgeInsets(top: 4, leading: 24, bottom: 4, trailing: 24))
                  .frame(maxWidth: .infinity)
                  .background(Color(red: 0, green: 0.23, blue: 0.82))
                  .cornerRadius(27.50)
                }
                .offset(x: -59.50, y: -10.61)
              }
              .frame(width: 339, height: 156)
              .cornerRadius(20)
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 17, height: 7)
                  .background(Color(red: 0.17, green: 0.17, blue: 0.17))
                  .cornerRadius(3.50)
                  .offset(x: -18, y: 0)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 7, height: 7)
                  .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                  .offset(x: -1, y: 0)
                  .opacity(0.50)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 7, height: 7)
                  .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                  .offset(x: 11, y: 0)
                  .opacity(0.50)
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 7, height: 7)
                  .background(Color(red: 0.77, green: 0.77, blue: 0.77))
                  .offset(x: 23, y: 0)
                  .opacity(0.50)
              }
              .frame(width: 53, height: 7)
            }
            .frame(height: 173)
            .offset(x: 0, y: -178.50)
            VStack(spacing: 30) {
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 62, height: 32)
                  .background(Color(red: 0.90, green: 0.93, blue: 1))
                  .cornerRadius(20)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 97, height: 32)
                  .cornerRadius(20)
                  .overlay(
                    RoundedRectangle(cornerRadius: 20)
                      .inset(by: 0.25)
                      .stroke(Color(red: 0.20, green: 0.20, blue: 0.20), lineWidth: 0.25)
                  )
                  .opacity(0.50)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 102, height: 32)
                  .cornerRadius(20)
                  .overlay(
                    RoundedRectangle(cornerRadius: 20)
                      .inset(by: 0.25)
                      .stroke(Color(red: 0.20, green: 0.20, blue: 0.20), lineWidth: 0.25)
                  )
                  .opacity(0.50)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 102, height: 32)
                  .cornerRadius(20)
                  .opacity(0.50)
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 91, height: 32)
                  .cornerRadius(20)
                  .overlay(
                    RoundedRectangle(cornerRadius: 20)
                      .inset(by: 0.25)
                      .stroke(Color(red: 0.20, green: 0.20, blue: 0.20), lineWidth: 0.25)
                  )
                  .opacity(0.50)
                Text("All")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(Color(red: 0, green: 0.23, blue: 0.82))
                Text("Popular")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(.black)
                  .opacity(0.50)
                Text("Blazer")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(.black)
                  .opacity(0.50)
                Text("Jacket")
                  .font(Font.custom("Poppins", size: 14).weight(.semibold))
                  .foregroundColor(.black)
                  .opacity(0.50)
              }
              .frame(width: 382, height: 32)
              VStack(alignment: .leading, spacing: 18) {
                HStack(alignment: .top, spacing: 21) {
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Elegant Blazer")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$129,99")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Casual Jeans")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$169,89")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                }
              }
              VStack(alignment: .leading, spacing: 18) {
                HStack(alignment: .top, spacing: 21) {
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Casual Jeans")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$169,89")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Casual Jeans")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$169,89")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                }
              }
              VStack(alignment: .leading, spacing: 18) {
                HStack(alignment: .top, spacing: 21) {
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Elegant Blazer")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$129,99")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                  ZStack() {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 159, height: 208)
                      .background(.white)
                      .cornerRadius(20)
                      .offset(x: 0, y: -24.50)
                      .shadow(
                        color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                      )
                    VStack(spacing: 10) {
                      ZStack() {
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(.white)
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                          .shadow(
                            color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 10, y: 4
                          )
                        Rectangle()
                          .foregroundColor(.clear)
                          .frame(width: 159, height: 208)
                          .background(
                            AsyncImage(url: URL(string: "https://via.placeholder.com/159x208"))
                          )
                          .cornerRadius(8)
                          .offset(x: 0, y: 0)
                      }
                      .frame(width: 159, height: 208)
                      VStack(spacing: 0) {
                        Text("Casual Jeans")
                          .font(Font.custom("Poppins", size: 14).weight(.semibold))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                        Text("$169,89")
                          .font(Font.custom("Poppins", size: 12).weight(.medium))
                          .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                          .opacity(0.50)
                      }
                    }
                    .frame(width: 159, height: 257)
                    .offset(x: 0, y: 0)
                  }
                  .frame(width: 159, height: 257)
                }
              }
            }
            .padding(EdgeInsets(top: 24, leading: 29, bottom: 24, trailing: 29))
            .frame(width: 440, height: 941)
            .background(.white)
            .offset(x: 0, y: 411.50)
            HStack(alignment: .top, spacing: 10) {
              ZStack() {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 318, height: 39)
                  .background(.white)
                  .cornerRadius(23.50)
                  .offset(x: 0, y: 0)
                ZStack() {
                  Ellipse()
                    .foregroundColor(.clear)
                    .frame(width: 16.45, height: 15)
                    .overlay(
                      Ellipse()
                        .inset(by: 1)
                        .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                    )
                    .offset(x: -0.55, y: -1)
                  Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 5.94, height: 0)
                    .overlay(
                      Rectangle()
                        .stroke(Color(red: 0.11, green: 0.11, blue: 0.11), lineWidth: 1)
                    )
                    .offset(x: 7.35, y: 4.50)
                    .rotationEffect(.degrees(-42.36))
                }
                .frame(width: 17.54, height: 17)
                .offset(x: -130.49, y: 0)
                ZStack() { }
                .frame(width: 23.03, height: 20.10)
                .offset(x: 127.75, y: -0.45)
                Text("Search product here...")
                  .font(Font.custom("Poppins", size: 10).weight(.medium))
                  .foregroundColor(.black)
                  .offset(x: -49.89, y: 0)
                  .opacity(0.50)
              }
              .frame(width: 318, height: 39)
              ZStack() {
                Ellipse()
                  .foregroundColor(.clear)
                  .frame(width: 39, height: 39)
                  .background(.white)
                  .offset(x: 0, y: 0)
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
                }
                .frame(width: 17, height: 16)
                .offset(x: 0, y: -0.50)
              }
              .frame(width: 39, height: 39)
            }
            .offset(x: -0.50, y: -317.50)
          }
          .frame(width: 440, height: 876)
          .background(.white)
          .offset(x: 0, y: -40)
          Rectangle()
            .foregroundColor(.clear)
            .frame(width: 35, height: 35)
            .background(
              AsyncImage(url: URL(string: "https://via.placeholder.com/35x35"))
            )
            .cornerRadius(14)
            .offset(x: -163.50, y: -420.50)
        }
        .frame(width: 440, height: 956)
        .background(.white)
        
    }
}

#Preview {
    HomeView2()
}
