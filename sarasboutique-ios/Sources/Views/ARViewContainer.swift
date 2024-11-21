//
//  ARViewContainer.swift
//  sarasboutique-ios
//
//  Created by Janith Personal on 2024-11-21.
//

import SwiftUI
import RealityKit
import ARKit

struct ARViewContainer : UIViewRepresentable {
    @Binding var modelName: String
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero)
        
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal,.vertical]
        config.environmentTexturing = .automatic
        
        arView.session.run(config)
        return arView
    }
    
    
    func updateUIView(_ uiView: ARView, context: Context) {
        let anchorEntity = AnchorEntity(plane: .any)
        guard let modelEntity = try? Entity.loadModel(named: modelName) else { return }
        anchorEntity.addChild(modelEntity)
        uiView.scene.addAnchor(anchorEntity)
    }
}

#Preview {
    ARViewContainer(modelName: .constant("toy_biplane_idle"))
}
