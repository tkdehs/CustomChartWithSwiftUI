//
//  SectionHeaderView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.white)
                .font(.title3)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.blue)
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "Hellow")
    }
}
