//
//  Overlay.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct Overlay: View {
    @State var selected = false
    
    var body: some View {
        EmojiView(emoji: "🍅")
//            .overlay(.ultraThinMaterial, in: Circle()) // 블러 추가
//            .overlay {
//                // 이미지 오버레이로 추가
//                URLImage(url: "https://cdn.aitimes.kr/news/photo/202303/27617_41603_044.jpg")
//            }
            .overlay(alignment: .bottomTrailing) {
                // 오른쪽 하단에 체크마크 추가
                if selected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.blue)
                        .font(.largeTitle)
                }
            }.onTapGesture {
                selected.toggle()
            }
        
    }
}

struct Overlay_Previews: PreviewProvider {
    static var previews: some View {
        Overlay()
    }
}
