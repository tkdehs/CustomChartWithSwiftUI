//
//  DragGesture.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct DragGesture_Tutorials: View {
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 50, height: 50)
        }
    }
}

struct DragGesture_Previews: PreviewProvider {
    static var previews: some View {
        DragGesture_Tutorials()
    }
}
