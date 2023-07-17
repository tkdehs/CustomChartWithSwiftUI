//
//  Alert.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct Alert_Tutorials: View {
    @State private var message = ""
    
    @State private var showAlert = false
    
    @State private var showImageAlert = false
    
    @State private var imageData: ImageData? = nil
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
            
            Button {
                imageData = ImageData.sample
                showImageAlert = true
            } label: {
                Text("Show Alert")
            }
            .padding()
            .alert("경고창", isPresented: $showAlert) {
                Button("확인") {
                    message = "확인"
                }
                // 취소 버튼
                Button("취소", role: .cancel) {
                    message = "취소"
                }
                // 삭제 버튼 빨강색으로 표기됨
                Button("삭제", role: .destructive) {
                    message = "삭제"
                }
            } message: {
                Text("조심! 하세요!")
            }
            .alert("경고", isPresented: $showImageAlert, presenting: imageData) { data in
                Button("필터 적용") {
                    message = data.filters.joined(separator: ",") + " 필터를 적용합니다."
                }
                // 취소 버튼
                Button("취소", role: .cancel) {
                    message = "취소"
                }
                // 삭제 버튼 빨강색으로 표기됨
                Button("삭제", role: .destructive) {
                    message = "\(data.name) 삭제"
                }
            } message: { data in
                Text("\(data.name), \(data.date)")
            }

        }
    }
}

struct Alert_Previews: PreviewProvider {
    static var previews: some View {
        Alert_Tutorials()
    }
}
