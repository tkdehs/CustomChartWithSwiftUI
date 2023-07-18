//
//  VStack.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct VStack_Tutorials: View {
    var body: some View {
        
        // 오른쪽 여백을 주고 왼쪽으로 밀고싶다면 아래와같이 여러개의 스텍을 사용한다.
        // 그리고 Spacer()을 사용해 빈공간을 채워준다.
        HStack {
            VStack(alignment: .leading, spacing: 20.0) {
                heart
                club
                spade
                diamond
            }
            .frame(maxHeight: .infinity)
            
             Spacer()
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
            .frame(width: 50, height: 50)
            .foregroundColor(.red)
    }
}

struct VStack_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Tutorials()
    }
}
