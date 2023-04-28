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
        
        //let boxAnchor = try! Experience.loadBox()
        //var imageAnchorToEntity: [ARImageAnchor: AnchorEntity] = [:]
        
        
        guard let referenceImages = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil) else {
            fatalError("Missing expected asset catalog resources.")
        }

        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = [.horizontal, .vertical]
        configuration.detectionImages = referenceImages
        arView.session.run(configuration)
        
        /*
        plateAnchor.actions.correctAnswerTap.onAction = context.coordinator.CorrectAnswer
        */
       // initialAnchor.actions.firstArrowShow.onAction = context.coordinator.
        
        //var maximumNumberOfTrackedImages: Int = 0
        
        context.coordinator.scene = initialAnchor
        
        // Add objects to scene
        arView.scene.anchors.append(initialAnchor)
        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {
        //var maximumNumberOfTrackedImages = 0
        
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
    
    
    /*
    func oneSession(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
        //code being for creating an anchor on top of the objects that pop up
        //  https://developer.apple.com/forums/thread/126845
        
        let initialAnchor = try! Experience.loadInitial()
        var imageAnchorToEntity: [ARImageAnchor: AnchorEntity] = [:]
        let arView = ARView(frame: .zero)
        
        anchors.compactMap{ $0 as? ARImageAnchor }.forEach {
            let anchorEntity = AnchorEntity()
            let modelEntity = initialAnchor.firstArrow!
            anchorEntity.addChild(modelEntity)
            arView.scene.addAnchor(anchorEntity)
            anchorEntity.transform.matrix = $0.transform
            imageAnchorToEntity[$0] = anchorEntity
        }
    }
     
    */
    
    override init() {
        super.init()
        
    }
    
    
    /*
    //adds anchors to image anchor once AR detects image
    func oneSession(_ session: ARSession, didAdd anchors: [ARAnchor]) {
        
        //code being for creating an anchor on top of the objects that pop up
        //  https://developer.apple.com/forums/thread/126845
        
        let initialAnchor = try! Experience.loadInitial()
        var imageAnchorToEntity: [ARImageAnchor: AnchorEntity] = [:]
        let arView = ARView(frame: .zero)
        
        anchors.compactMap{ $0 as? ARImageAnchor }.forEach {
            let anchorEntity = AnchorEntity()
            let modelEntity = initialAnchor.firstArrow!
            anchorEntity.addChild(modelEntity)
            arView.scene.addAnchor(anchorEntity)
            anchorEntity.transform.matrix = $0.transform
            imageAnchorToEntity[$0] = anchorEntity
        }
        */
        
        /*
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
         */
    }

/*
let boxAnchor = try! Experience.loadBox()
var imageAnchorToEntity: [ARImageAnchor: AnchorEntity] = [:]

override func viewDidLoad() {
    super.viewDidLoad()
   
    arView.scene.addAnchor(boxAnchor)
    arView.session.delegate = self
}

func session(_ session: ARSession, didAdd anchors: [ARAnchor]) {
    anchors.compactMap { $0 as? ARImageAnchor }.forEach {
        let anchorEntity = AnchorEntity()
        let modelEntity = boxAnchor.steelBox!
        anchorEntity.addChild(modelEntity)
        arView.scene.addAnchor(anchorEntity)
        anchorEntity.transform.matrix = $0.transform
        imageAnchorToEntity[$0] = anchorEntity
    }
}

func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
    anchors.compactMap { $0 as? ARImageAnchor }.forEach {
        let anchorEntity = imageAnchorToEntity[$0]
        anchorEntity?.transform.matrix = $0.transform
    }
}

*/


