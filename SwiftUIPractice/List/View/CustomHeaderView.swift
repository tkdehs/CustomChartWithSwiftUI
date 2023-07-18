//
//  CustomHeaderView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct CustomHeaderView: View {
    let title:String
    let imageName: String
    
    var body: some View {
        Label(title, systemImage: imageName)
            .font(.title)
            .frame(minHeight: 60)
    }
}

struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(title: "Star", imageName: "star")
    }
}
