//
//  ACustomView.swift
//  Landmarks
//
//  Created by BananaCoder on 06/09/2023.
//

import SwiftUI

struct ACustomView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ACustomView()
        .environment(ModelData())
}
