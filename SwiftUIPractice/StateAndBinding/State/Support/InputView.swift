//
//  InputView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct InputView: View {
    @Binding var value: String
    
    var body: some View {
        VStack {
            TextField(text: $value, label: { Text("Value") })
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(value: .constant("Test"))
    }
}
