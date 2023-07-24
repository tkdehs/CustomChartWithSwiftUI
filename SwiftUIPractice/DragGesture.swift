//
//  DragGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct DragGesture_Tutorials: View {
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 10, coordinateSpace: .local) // local: view를 영억, global 전체영역
            .updating($currentTranslation, body: { value, state, transaction in
                state = value.translation
            })
            .onEnded { value in
                finalTranslation.width += value.translation.width
                finalTranslation.height += value.translation.height
            }
    }
    
    @GestureState private var currentTranslation = CGSize.zero
    @State private var finalTranslation = CGSize.zero
    
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 50, height: 50)
                .offset(currentTranslation)
                .offset(finalTranslation)
                .gesture(dragGesture)
        }
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Tutorials()
    }
}
