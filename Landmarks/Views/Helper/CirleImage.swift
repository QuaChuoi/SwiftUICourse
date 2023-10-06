//
//  CirleImage.swift
//  Landmarks
//
//  Created by BananaCoder on 14/09/2023.
//

import SwiftUI

struct CirleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CirleImage(image: Image("turlerock"))
}
