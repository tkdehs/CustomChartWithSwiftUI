//
//  ComfirmationDialog.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct ComfirmationDialog_Tutorials: View {
    
    @State private var showDialog = false
    
    @State private var color:Color = .black
    
    var body: some View {
        VStack {
            Spacer()
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(color)
            
            Spacer()
            Button {
                showDialog = true
            } label: {
                Text("Select Color")
            }
        }.confirmationDialog("컬러 선택", isPresented: $showDialog,presenting: ColorData.sample) {
            ForEach($0) { item in
                Button(item.title) {
                    color = item.color
                }
            }
            Button("취소", role: .cancel) {
            }
            Button("Reset", role: .destructive) {
                color = .black
            }
        } message: { _ in
            Text("원하는 컬러를 선택하세요")
        }
    }
}

struct ComfirmationDialog_Previews: PreviewProvider {
    static var previews: some View {
        ComfirmationDialog_Tutorials()
    }
}
