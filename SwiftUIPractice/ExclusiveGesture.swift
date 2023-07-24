//
//  ExclusiveGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/24.
//

import SwiftUI

struct ExclusiveGesture_Tutorials: View {
    @ObservedObject var rotation = Rotation()
    @ObservedObject var magnification = Magnification()
    @State private var currentGestureType = GestureType.rotation
    
    var gestures: some Gesture {
        ExclusiveGesture(rotation.gesture, magnification.gesture)
    }
    
    var logo: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
    }
    
    var body: some View {
        VStack {
            VStack {
                if currentGestureType == .rotation {
                    logo.rotationEffect(rotation.finalAngle)
                        .scaleEffect(magnification.finalScale)
                        .gesture(gestures)
                } else {
                    logo.rotationEffect(rotation.finalAngle)
                        .scaleEffect(magnification.finalScale)
                        .gesture(magnification.gesture.exclusively(before: rotation.gesture))
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            ExclusiveGestureMenu(currentGestureType: $currentGestureType)
        }
    }
}

struct ExclusiveGesture_Previews: PreviewProvider {
    static var previews: some View {
        ExclusiveGesture_Tutorials()
    }
}
