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
            }
//            .badge(2)

            Tab("Saved", systemImage: "bookmark") {
            }
            
            Tab("Cart", systemImage: "basket") {
            }

            Tab("Account", systemImage: "person.crop.circle.fill") {
            }
//            .badge("!")
        }
    }
}

#Preview {
    MainView()
}
