//
//  SpringAnimation.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/20.
//

import SwiftUI

struct SpringAnimation: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x:50, y:50)
                .animation(.spring())
            
            Spacer()
            
            HStack {
                Button("Animate") {
                    position = position == .zero ? CGPoint(x: 100, y: 200) : .zero
                }.padding()
            }
        }
    }
}

struct SpringAnimation_Previews: PreviewProvider {
    static var previews: some View {
        SpringAnimation()
    }
}
