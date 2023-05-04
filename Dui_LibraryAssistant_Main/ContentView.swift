//
//  ContentView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI
import RealityKit
import ARKit
import UIKit


struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
        
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        //make ar view based on custom ar view file stuff
        let arView = ARView(frame: .zero)
        context.coordinator.view = arView
        
        //delegate to handle frames of ARview
        arView.session.delegate = context.coordinator
        
        let initialAnchor = try! Experience.loadInitial()
        let shelfAnchor = try! Experience.loadInitial()
        
        shelfAnchor.actions.shelfTarget.onAction = context.coordinator.foundShelf
        
        guard let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil) else {
            fatalError("Missing expected asset catalog resources.")
        }

        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal, .vertical]
        configuration.detectionImages = referenceImages
        arView.session.run(configuration)
        
        
        context.coordinator.scene = initialAnchor
        context.coordinator.scene = shelfAnchor
        
        // Add objects to scene
        arView.scene.anchors.append(initialAnchor)
        arView.scene.anchors.append(shelfAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    
    
}

class Coordinator:NSObject, ARSessionDelegate
{
    weak var view:ARView?
    weak var scene: Experience.Initial?
    
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
        for anchor in anchors
        {
            if(anchor.name == "Image anchor")
            {
                let anchorEntity = AnchorEntity(world: anchor.transform)
                
                let initialAnchor = try! Experience.loadInitial()
                
                anchorEntity.addChild(initialAnchor)
                
                view?.scene.anchors.append(anchorEntity)
                
            }
        }
        
       
    }
    
    func foundShelf(_ entity: Entity?) {
        //guard let entity = entity else { return }
        //do something with entity
        
    }
    
    override init() {
        super.init()
        
    }
    
}
