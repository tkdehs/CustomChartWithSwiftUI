//
//  MultiColumnView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/21.
//

import SwiftUI

struct MultiColumnView: View {
    
    var emojiList = ["🧄","🍒","🥓","🍰","🧁"]
    var body: some View {
        NavigationView {
            List {
                ForEach(emojiList, id:\.self) { emoji in
                    NavigationLink(emoji) {
                        EmojiView(emoji: emoji)
                    }
                }
            }
            .navigationTitle("Emoji")
            
            ZStack {
                Color.yellow
                Text("Secondary Scene")
                    .font(.largeTitle)
            }.ignoresSafeArea()
        }
    }
}

struct MultiColumnView_Previews: PreviewProvider {
    static var previews: some View {
        MultiColumnView()
        
        #if os(iOS)
        MultiColumnView()
            .previewInterfaceOrientation(.landscapeLeft)
        #endif
    }
}
