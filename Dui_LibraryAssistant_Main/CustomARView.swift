//
//  CustomARView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//
//  To detect multiple images - courtsey of Alan
//  To add inclusion

import RealityKit
import ARKit

class CustomARView: ARView {
    
    
    var DefaultConfiguration:ARWorldTrackingConfiguration {
        guard let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)
        else {
            fatalError("Missing expected assest catlog resources.")
        }
        let config = ARWorldTrackingConfiguration()
        
        //picks up on images specified in assests folder
        config.detectionImages = referenceImages
        
        config.sceneReconstruction = .mesh
        self.environment.sceneUnderstanding.options = .occlusion
        
        
        //config.sceneReconstruction
        return config
    }
    
    required init(frame frameRect:CGRect) {
        super.init(frame:frameRect)
    }
    
    @MainActor required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func configure() {
        session.run(DefaultConfiguration)
    }
}
