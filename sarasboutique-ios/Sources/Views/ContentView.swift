//
//  ContentView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-01.
//

import SwiftUI

struct ContentView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Button {
                isPresented.toggle()
            } label: {
                Label("View in AR", systemImage: "arkit")
            }.buttonStyle(BorderedProminentButtonStyle())
                .padding(24)
        }
        .padding()
        .fullScreenCover(isPresented: $isPresented, content: {
            SheetView(isPresented: $isPresented)
        })
        
    }
    
}

#Preview {
    ContentView()
}
