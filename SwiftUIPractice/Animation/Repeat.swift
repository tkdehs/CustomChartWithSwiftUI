//
//  Repeat.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/20.
//

import SwiftUI

struct Repeat: View {
    @State private var animating = false
    
    var finiteRepeat: Animation {
        Animation.linear(duration: 1.5)
            .repeatCount(3, autoreverses: false)
    }
    
    var infiniteRepeat: Animation {
        Animation.linear(duration: 1.5)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        VStack {
            Image(systemName: "arrow.2.circlepath")
                .resizable()
                .foregroundColor(.blue)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200,height: 200)
                .rotationEffect(.degrees(animating ? 360 : 0))
                .animation(infiniteRepeat, value: animating)
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .onAppear {
            animating = true
        }
    }
}

struct Repeat_Previews: PreviewProvider {
    static var previews: some View {
        Repeat()
    }
}
