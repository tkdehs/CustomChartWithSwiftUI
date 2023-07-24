//
//  MagnificationGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/24.
//

import SwiftUI

struct MagnificationGesture_Tutorials: View {
    @State private var finalscale: CGFloat = 1.0
    @State private var lastedScale: CGFloat = 1.0
    
    var magnification: some Gesture {
        MagnificationGesture()
            .onChanged { value in
                let delta = value / self.lastedScale
                self.lastedScale = value.magnitude
                self.finalscale *= delta
            }
            .onEnded { value in
                self.lastedScale = 1.0
            }
    }
    
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .scaleEffect(finalscale)
            .gesture(magnification)
            
    }
}

struct MagnificationGesture_Previews: PreviewProvider {
    static var previews: some View {
        MagnificationGesture_Tutorials()
    }
}
