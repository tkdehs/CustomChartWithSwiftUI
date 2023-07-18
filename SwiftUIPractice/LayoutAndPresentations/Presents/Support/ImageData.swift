//
//  ImageData.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import Foundation

struct ImageData:Identifiable {
    var id: String {
        return name
    }
    var name = ""
    var filters:[String] = []
    var date:Date = Date()
    
    static var sample:ImageData = ImageData(name: "셈플 데이터", filters: ["필터1", "필터2"], date: Date())
}
