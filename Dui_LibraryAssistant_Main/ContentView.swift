//
//  ContentView.swift
//  Dui_LibraryAssistant_Main
//
//  Created by Ariah Sargent on 4/26/23.
//

import SwiftUI
import RealityKit
import ARKit

struct ContentView : View {
    var body: some View {
        ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> CustomARView {
        
        //make ar view based on custom ar view file stuff
        let arView = CustomARView(frame: .zero)
        context.coordinator.view = arView
        
        //delegate to handle frames of ARview
        arView.session.delegate = context.coordinator
        
        let initialAnchor = try! Experience.loadInitial()
        
        context.coordinator.scene = initialAnchor
        
        // Add objects to scene
        arView.scene.anchors.append(initialAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: CustomARView, context: Context) {}
    
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
}

class Coordinator:NSObject, ARSessionDelegate
{
    weak var view:ARView?
    weak var scene: Experience.Initial?
    
    //duplicates?
    let initialAnchor = try! Experience.loadInitial()
    var imageAnchorToEntity: [ARImageAnchor: AnchorEntity] = [:]
    let arView = CustomARView(frame: .zero)
    
    
    override init() {
        super.init()
        
    }
    
    //adds anchors to image anchor once AR detects image
    func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
        //work here to above?
        //  https://developer.apple.com/forums/thread/126845
        
        anchors.compactMap{ $0 as? ARImageAnchor }.forEach {
            let anchorEntity = AnchorEntity()
            let modelEntity = initialAnchor.firstArrow!
            anchorEntity.addChild(modelEntity)
            arView.scene.addAnchor(anchorEntity)
            anchorEntity.transform.matrix = $0.transform
            imageAnchorToEntity[$0] = anchorEntity
        }
        
        
        
        //detect multiple image anchors
        // https://drive.google.com/file/d/1r8g-H8J0HBl2kGQcFx9a1RKTdKl2Q3aQ/view
        
        for anchor in anchors {
            if(anchor.name == "bookshelfAnchor") {
                let anchorEntity = AnchorEntity(world: anchor.transform)
                let initialAnchor = try! Experience.loadInitial()
                
                anchorEntity.addChild(initialAnchor)
                view!.scene.anchors.append(initialAnchor)
            }
        }
    }
}



/*
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
*/
