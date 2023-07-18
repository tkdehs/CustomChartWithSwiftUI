//
//  EmojiView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct EmojiView: View {
    let emoji:String
    
    init(emoji: String) {
        self.emoji = emoji
    }
    
    var body: some View {
        Text(emoji)
            .font(.system(size: 100))
            .frame(width: 150, height: 150)
            .background(Color(red: 0.85, green: 0.85, blue: 0.85))
            .clipShape(Circle())
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(emoji: "😃")
    }
}
