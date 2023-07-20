//
//  AnimationBasics.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/20.
//

import SwiftUI

struct AnimationBasics: View {
    @State private var position = CGPoint.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                .position(position)
                .offset(x:50, y:50)
//                .animation(.easeInOut(duration: 2).delay(1).speed(0.5), value: position)
            
                //speed(double) 1이하는 시간증가, 1이상은 시간감소
            Spacer()
            
            HStack {
                Button("Animate") {
                    withAnimation(.easeInOut(duration: 2).delay(0.1).speed(5)) {
                        position = position == .zero ? CGPoint(x: 100, y: 200) : .zero
                    }
                }.padding()
                
                Button("Update") {
                    position = position == .zero ? CGPoint(x: 100, y: 200) : .zero
                }.padding()
            }
        }
    }
}

struct AnimationBasics_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBasics()
    }
}
