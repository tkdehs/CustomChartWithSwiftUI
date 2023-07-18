//
//  ScrollView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct ScrollView_Tutorials: View {
    @Environment(\.presentationMode) var presentationMode
    
    @Environment(\.dismiss) var dismiss
    
    @Binding var presentModal: Bool

    init(presentModal: Binding<Bool>) {
        _presentModal = presentModal
        UIScrollView.appearance().bounces = false
    }
    
    var body: some View {
        ZStack {
            ScrollView([.horizontal, .vertical], showsIndicators: false) {
                URLImage(url: "https://cdn.aitimes.kr/news/photo/202303/27617_41603_044.jpg")
                    .frame(width: 2000)
            }
            .ignoresSafeArea()
            VStack {
                Button {
//                    self.presentationMode.wrappedValue.dismiss()
                    presentModal = false
//                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .tint(.white)
                    
                }.padding()
                
                Spacer()
            }


        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView_Tutorials(presentModal: .constant(true))
    }
}

