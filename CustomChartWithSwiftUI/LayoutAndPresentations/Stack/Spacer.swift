//
//  Spacer.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct Spacer_Tutorials: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .background(.blue)
            
            Spacer()
                .frame(height: 50)
            
            VStack {
                Image(systemName: "suit.spade.fill")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            }
            .padding()
            .background(.red)
            
            Spacer()
            Spacer()
        }
        .padding(.top, 50)
    }
}

struct Spacer_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_Tutorials()
    }
}
