//
//  EditMode.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct EditMode: View {
    @State private var items = AppleProduct.sampleList
    
    var body: some View {
        NavigationView {
            List {
                ForEach(items) { item in
                    Text(item.name)
                }
                .onDelete { rows in
                    items.remove(atOffsets: rows)
                }
                .onMove(perform: move)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func move(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}

struct EditMode_Previews: PreviewProvider {
    static var previews: some View {
        EditMode()
    }
}
