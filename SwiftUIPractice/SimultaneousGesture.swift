//
//  SimultaneousGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/24.
//

import SwiftUI

struct SimultaneousGesture_Tutorials: View {
    @ObservedObject var rotation = Rotation()
    @ObservedObject var magnification = Magnification()
    
    var gestures: some Gesture {
        SimultaneousGesture(rotation.gesture, magnification.gesture)
    }
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .rotationEffect(rotation.finalAngle)
            .scaleEffect(magnification.finalScale)
//            .gesture(rotation.gesture.simultaneously(with: magnification.gesture))
            .gesture(gestures)
    }
}

struct SimultaneousGesture_Previews: PreviewProvider {
    static var previews: some View {
        SimultaneousGesture_Tutorials()
    }
}
