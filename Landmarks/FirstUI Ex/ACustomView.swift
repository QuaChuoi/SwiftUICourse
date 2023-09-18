//
//  ACustomView.swift
//  Landmarks
//
//  Created by BananaCoder on 06/09/2023.
//

import SwiftUI

struct ACustomView: View {
    
    var radius:CGFloat = CGFloat(1.0)
    
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            CirleImage()
                .offset(y: -130)
                .padding(.bottom, -140)
            VStack {
                VStack(alignment: .leading) {
                    Text("SwiftUI")
                        .font(.largeTitle)
                    HStack {
                        Text("Hi There!")
                            .font(.title3)
                            .bold()
                            .foregroundColor(.indigo)
                        Spacer()
                        Text("Welcome to swiftUI")
                    }
                    Divider()
                    Text("Divider")
                        .font(.title2)
                    Text("tạo đường kẻ ngnag phía trên")
                }
                .padding(32)
                
                Spacer()
            }
        }
    }
}

struct ACustomView_Previews: PreviewProvider {
    static var previews: some View {
        ACustomView()
    }
}

