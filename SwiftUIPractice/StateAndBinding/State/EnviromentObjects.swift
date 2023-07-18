//
//  EnviromentObject.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct EnviromentObjects_Tutorials: View {
    @State private var value: String = ""
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            HStack {
                TextField("Value", text: $value)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button {
                    viewModel.list.insert(value, at: 0)
                    value = ""
                } label: {
                    Text("Add To List")
                }
                .padding()
            }
            List(viewModel.list, id: \.self) {
                Text($0)
            }
        }
    }
}

struct EnviromentObjects_Previews: PreviewProvider {
    static var previews: some View {
        EnviromentObjects_Tutorials()
            .environmentObject(ViewModel())
    }
}
