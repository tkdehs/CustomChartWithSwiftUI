//
//  MultiSelection.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct MultiSelection: View {
    var items = AppleProduct.sampleList
    
    @State private var selected: Set<AppleProduct> = []
    
    var body: some View {
        NavigationView {
            VStack {
                Text("\(selected.count) item(s) selected")
                    .font(.title)
                
                List(items, id:\.self) { item in
                    HStack {
                        if selected.contains(item) {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.blue)
                            Button {
                                selected.remove(item)
                            } label: {
                                Text(item.name)
                            }
                        } else {
                            Image(systemName: "checkmark.circle")
                            Button {
                                selected.insert(item)
                            } label: {
                                Text(item.name)
                            }
                        }
                    }
                    .listRowBackground(selected.contains(item) ? Color.yellow : nil)
                }
            }
//            .toolbar {
//                EditButton()
//            }
        }
    }
}

struct MultiSelection_Previews: PreviewProvider {
    static var previews: some View {
        MultiSelection()
    }
}
