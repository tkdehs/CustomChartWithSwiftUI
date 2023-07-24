//
//  SwiftUIView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/24.
//

import SwiftUI

struct RotationGesture_Tutorials: View {
    @State private var finalAngle: Angle = .degrees(0)
    @State private var endedAngle: Angle = .degrees(0)
    
    var rotation: some Gesture {
        RotationGesture()
            .onChanged { value in
                let delta = value - finalAngle
                finalAngle = value
                endedAngle += delta
            }
            .onEnded { value in
                finalAngle = .degrees(0)
            }
    }
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .rotationEffect(endedAngle)
            .gesture(rotation)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        RotationGesture_Tutorials()
    }
}
