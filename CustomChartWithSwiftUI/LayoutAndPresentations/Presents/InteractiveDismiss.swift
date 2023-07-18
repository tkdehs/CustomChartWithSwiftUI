//
//  InteractiveDismiss.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct InteractiveDismiss: View {
    @State private var showComposer = false
    
    @State private var edited = false
    
    var body: some View {
        Button {
            showComposer = true
        } label: {
            Text("Show Me")
        }
        .padding()
        .sheet(isPresented: $showComposer) {
            ComposeScene(edited: $edited)
                .interactiveDismissDisabled(edited)
        }
    }
}

struct InteractiveDismiss_Previews: PreviewProvider {
    static var previews: some View {
        InteractiveDismiss()
    }
}
