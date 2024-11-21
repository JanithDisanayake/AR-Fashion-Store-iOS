//
//  SheetView.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-21.
//

import SwiftUI

struct SheetView: View {
    let modelName: String
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack(alignment: .topTrailing) {

            ARViewContainer(modelName: modelName)
                .ignoresSafeArea(edges: .all)

            Button {
                isPresented.toggle()
            } label: {
                Image(systemName: "xmark.circle")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .background(.ultraThinMaterial)
                    .clipShape(Circle())
            }
            .padding(24)
        }
    }
}

#Preview {
    SheetView(modelName: "toy_biplane_idle", isPresented: .constant(true))
}

