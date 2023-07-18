//
//  Sheet.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct Sheet_Tutorials: View {
    @State private var presentCardModal = false
    
    @State private var presentFullScreen = false
    
    var body: some View {
        VStack {
            Button {
                presentCardModal = true
            } label: {
                Text("Card Modal")
            }
            .padding()
            .sheet(isPresented: $presentCardModal, onDismiss: {
                
            }) {
                ScrollView_Tutorials(presentModal: $presentCardModal)
            }
            
            
            Button {
                presentFullScreen = true
            } label: {
                Text("FullScreen")
            }
            .padding()
            .fullScreenCover(isPresented: $presentFullScreen) {
                ScrollView_Tutorials(presentModal: $presentFullScreen)
            }
        }
    }
}

struct Sheet_Previews: PreviewProvider {
    static var previews: some View {
        Sheet_Tutorials()
    }
}
