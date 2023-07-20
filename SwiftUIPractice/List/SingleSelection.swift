//
//  SwiftUIView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct SingleSelection: View {
    var items = AppleProduct.sampleList
    
    @State private var selected: AppleProduct? = nil
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Selected : \(selected?.name ?? "-")")
                    .font(.largeTitle)
                List(items, id:\.self, selection: $selected) { item in
                    Text(item.name)
//                    Button {
//                        selected = item
//                    } label: {
//                        Text(item.name)
//                    }
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
}

struct SingleSelection_Previews: PreviewProvider {
    static var previews: some View {
        SingleSelection()
    }
}
