//
//  Sections.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct Sections: View {
    var body: some View {
        ScrollView {
            LazyVStack(pinnedViews: [.sectionHeaders]) {
                Section {
                    EmojiView(emoji: "😀")
                    EmojiView(emoji: "😍")
                    EmojiView(emoji: "😜")
                } header: {
                    SectionHeaderView(title: "Emotion")
                }
                
                Section {
                    EmojiView(emoji: "🐶")
                    EmojiView(emoji: "🐱")
                    EmojiView(emoji: "🦊")
                } header: {
                    SectionHeaderView(title: "Animal")
                }
                
                Section {
                    EmojiView(emoji: "🍏")
                    EmojiView(emoji: "🍐")
                    EmojiView(emoji: "🍉")
                } header: {
                    SectionHeaderView(title: "Fruit")
                }
            }
        }
    }
}

struct Sections_Previews: PreviewProvider {
    static var previews: some View {
        Sections()
    }
}
