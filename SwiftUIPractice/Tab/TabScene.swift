//
//  TabScene.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct TabScene: View {
    let name: String
    let color: Color
    
    @Binding var selectedIndex: Int
    
    var body: some View {
        
        VStack {
            Image(systemName: name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(color)
                .padding(EdgeInsets(top: 20, leading: 100, bottom: 20, trailing: 100))
            
            Button {
                selectedIndex = selectedIndex >= 2 ? 0 : (selectedIndex + 1)
            } label: {
                 Text("Next Tab")
            }
        }
        
    }
}

struct TabScene_Previews: PreviewProvider {
    static var previews: some View {
        TabScene(name: "star", color: Color.red, selectedIndex: .constant(0))
    }
}
