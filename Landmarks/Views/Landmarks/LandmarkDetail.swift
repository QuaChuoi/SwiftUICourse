//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by BananaCoder on 19/09/2023.
//

import SwiftUI

struct LandmarkDetail: View {
    @Environment(ModelData.self) var modelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id})!
    }
    
    var body: some View {
        @Bindable var modelData = modelData
        
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CirleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -140)
            
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    let modelData = ModelData()
    return LandmarkDetail(landmark: ModelData().landmarks[0])
        .environment(modelData)
}
