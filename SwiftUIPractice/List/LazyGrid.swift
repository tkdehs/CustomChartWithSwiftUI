//
//  LazyGrid.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct LazyGrid: View {
    @State private var items = AppleProduct.sampleList
    @State private var dragging: AppleProduct?
    
    private let rows = [
        GridItem(.adaptive(minimum: 150, maximum: .infinity), spacing: nil, alignment: .leading)
        
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 100) {
                ForEach(items) { item in
                    ProductGridItem(product: item)
                }
            }.padding()
        }
    }
}

struct LazyGrid_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LazyGrid()
            LazyGrid().previewInterfaceOrientation(.landscapeLeft)
        }
    }
}
