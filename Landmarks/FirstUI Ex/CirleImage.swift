//
//  CirleImage.swift
//  Landmarks
//
//  Created by BananaCoder on 14/09/2023.
//

import SwiftUI

struct CirleImage: View {
    var body: some View {
        Image("LancelotMoshow")
            .resizable()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 6)
            }
            .shadow(radius: 9)
    }
}

struct CirleImage_Previews: PreviewProvider {
    static var previews: some View {
        CirleImage()
    }
}
