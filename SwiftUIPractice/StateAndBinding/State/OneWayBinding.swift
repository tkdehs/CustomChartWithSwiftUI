//
//  OneWayBinding.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct OneWayBinding: View {
    @State var text: String = "Hello, SwiftUI"
    
    var body: some View {
        VStack(spacing: 70) {
            Text(text)
                .font(.largeTitle)
            
            Button {
                text = "Hi, SwitftUI"
            } label: {
                Text("Update")
            }
            .padding()
        }
    }
}

struct OneWayBinding_Previews: PreviewProvider {
    static var previews: some View {
        OneWayBinding()
    }
}
