//
//  MainView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomeView()
            }
//            .badge(2)

            Tab("WishList", systemImage: "heart") {
                WishListView()
            }
            
            Tab("Cart", systemImage: "basket") {
                CartView()
            }

            Tab("Account", systemImage: "person.crop.circle.fill") {
                ProfileView()
            }
//            .badge("!")
        }
    }
}

#Preview {
    MainView()
}
