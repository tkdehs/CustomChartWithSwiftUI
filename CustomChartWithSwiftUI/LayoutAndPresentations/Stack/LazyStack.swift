//
//  LazyStack.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct LazyStack: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(1..<101) {
                    NumberView(number: $0)
                }
            }
        }
    }
    
}

struct LazyStack_Previews: PreviewProvider {
    static var previews: some View {
        LazyStack()
    }
}
