//
//  MainNavView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct MainNavView: View {
    @State private var push = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                Button {
                    push = true
                } label: {
                    Text("Toggle")
                }
                .padding()
                
                NavigationLink("Push", isActive: $push) {
                    EmojiView(emoji: "🍊")
                        .navigationTitle("EmojiView")
                }
                .padding()
            }
            .navigationTitle("Conditional Push")
        }
    }
}

struct MainNavView_Previews: PreviewProvider {
    static var previews: some View {
        MainNavView()
    }
}
