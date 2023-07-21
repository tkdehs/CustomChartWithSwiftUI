//
//  Tab.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct Tab_Tutorials: View {
    @State private var selectionIndex = 0
    
    var body: some View {
        TabView(selection: $selectionIndex) {
            TabScene(name: "star", color: .red, selectedIndex: $selectionIndex)
                .tabItem {
                    Label("Star", systemImage: "star")
                }
                .tag(0)
            TabScene(name: "heart", color: .gray, selectedIndex: $selectionIndex)
                .tabItem {
                    Label("Heart", systemImage: "heart")
                }
                .tag(1)
            TabScene(name: "play", color: .blue, selectedIndex: $selectionIndex)
                .tabItem {
                    Label("Play", systemImage: "play")
                }
                .tag(2)
        }
        .onChange(of: selectionIndex) { newValue in
            print(newValue)
        }
    }
}

struct Tab_Previews: PreviewProvider {
    static var previews: some View {
        Tab_Tutorials()
    }
}
