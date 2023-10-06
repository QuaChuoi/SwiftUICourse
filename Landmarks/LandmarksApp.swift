//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by BananaCoder on 06/09/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ACustomView()
                .environment(ModelData())
        }
    }
}

