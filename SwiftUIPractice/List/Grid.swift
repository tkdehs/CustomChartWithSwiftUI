//
//  Grid.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct Grid: View {
    var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            ForEach(0 ..< 3) { row in
                HStack {
                    ForEach(0 ..< 2) { col in
                        if row * 3 + col < items.count {
                            ProductGridItem(product: items[row * 3 + col])
                        }
                    }
                }
            }
        }
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
