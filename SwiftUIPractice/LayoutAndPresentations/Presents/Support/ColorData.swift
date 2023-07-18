//
//  ColorData.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//
import SwiftUI

struct ColorData: Identifiable {
    var id: String {
        return title
    }
    
    let title: String
    let color: Color
    
    static let sample = [
        ColorData(title: "Red", color: .red),
        ColorData(title: "Green", color: .green),
        ColorData(title: "Blue", color: .blue),
        ColorData(title: "Yellow", color: .yellow),
        ColorData(title: "Pink", color: .pink)
    ]
}

