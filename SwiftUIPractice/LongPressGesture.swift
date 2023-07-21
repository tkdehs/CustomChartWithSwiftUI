//
//  LongPressGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct LongPressGesture_Tutorials: View {
    @State private var showOriginal = true
    
    var body: some View {
        Image("swiftui-logo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .blur(radius: showOriginal ? 0.0 : 40.0)
            .animation(.easeInOut, value: showOriginal)
            .onLongPressGesture(minimumDuration: 0.5, maximumDistance: 10) {
                showOriginal.toggle()
            } onPressingChanged: { bool in
                print(bool)
            }

    }
}

struct LongPressGesture_Previews: PreviewProvider {
    static var previews: some View {
        LongPressGesture_Tutorials()
    }
}
