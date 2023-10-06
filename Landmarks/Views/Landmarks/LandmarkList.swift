//
//  LandmarkList.swift
//  Landmarks
//
//  Created by BananaCoder on 19/09/2023.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly = false
    
    var filteredLanmarks: [Landmark] {
        modelData.landmarks.filter() { item in
            (!showFavoriteOnly || item.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Favorites only", isOn: $showFavoriteOnly)
                ForEach(filteredLanmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
