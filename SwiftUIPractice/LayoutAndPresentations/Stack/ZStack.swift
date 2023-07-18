//
//  ZStack.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct ZStack_Tutorials: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            heart
            club
            spade
            diamond
                .offset(x: -100, y: -100)
        }
    }
    
    private var heart: some View {
        Image(systemName: "suit.heart.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
    
    private var club: some View {
        Image(systemName: "suit.club.fill")
            .resizable()
            .frame(width: 100, height: 100)
            .foregroundColor(.black)
    }
    
    private var spade: some View {
        Image(systemName: "suit.spade.fill")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(.black)
    }
    
    private var diamond: some View {
        Image(systemName: "suit.diamond.fill")
            .resizable()
            .frame(width: 200, height: 200)
            .foregroundColor(.red)
            .opacity(0.5)
    }
}

struct ZStack_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Tutorials()
    }
}
