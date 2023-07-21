//
//  TabGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct TabGesture_Tutorials: View {
    @State private var tapCount = 0
    
    var tapToPlus: some Gesture {
        TapGesture()
            .onEnded { _ in
                tapCount += 1
            }
    }
    
    var doubleTapToPlus10: some Gesture {
        TapGesture(count: 2)
            .onEnded { _ in
                tapCount += 10
            }
    }
    
    var body: some View {
        VStack {
            Text("\(tapCount)")
                .font(.largeTitle)
                .onTapGesture(count: 2) {
                    tapCount = 0
                }
            
            HStack {
                Image(systemName: "minus.circle")
                    .font(.system(size:100))
                    .foregroundColor(.red)
                    .padding()
                    .gesture(
                        TapGesture().onEnded{
                            tapCount -= 1
                        }
                    )
                
                Image(systemName: "plus.circle")
                    .font(.system(size:100))
                    .foregroundColor(.blue)
                    .padding()
                    .gesture(doubleTapToPlus10)
                    .gesture(tapToPlus)
                
            }
            
            
        }
    }
}

struct TabGesture_Previews: PreviewProvider {
    static var previews: some View {
        TabGesture_Tutorials()
    }
}
