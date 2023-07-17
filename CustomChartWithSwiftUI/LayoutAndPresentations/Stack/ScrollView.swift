//
//  ScrollView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct ScrollView_Tutorials: View {
    
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ScrollView([.horizontal, .vertical], showsIndicators: false) {
            URLImage(url: "https://cdn.aitimes.kr/news/photo/202303/27617_41603_044.jpg")
                .frame(width: 2000)
        }
        .ignoresSafeArea()
        
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Tutorials()
    }
}

