//
//  ObservableList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct ObservableList: View {
    @State private var value: String = ""
    
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.title)
                .font(.largeTitle)
            
            Button {
                viewModel.title = "HI"
            } label: {
                Text("Update Title")
            }
            .padding()
            
            HStack {
                TextField("Value",text: $value)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Add To List") {
                    viewModel.list.insert(value, at: 0)
                    value = ""
                }.padding()
            }
            List(viewModel.list, id:\.self) {
                Text($0)
            }
        }
    }
}

struct ObservableList_Previews: PreviewProvider {
    static var previews: some View {
        ObservableList()
    }
}
