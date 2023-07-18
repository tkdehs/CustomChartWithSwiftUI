//
//  TwoWayBinding.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct TwoWayBinding: View {
    @State private var value: String = "Hello, SwiftUI"
    var body: some View {
        VStack(spacing: 70) {
            Text(value)
                .font(.largeTitle)
            InputView(value: $value)
        }
    }
}

struct TwoWayBinding_Previews: PreviewProvider {
    static var previews: some View {
        TwoWayBinding()
    }
}
