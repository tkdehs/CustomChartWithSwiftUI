//
//  SearchPlacement.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/20.
//

import SwiftUI

struct SearchPlacement: View {
    @State private var keyword = ""
    
    var body: some View {
        NavigationView {
            List {
                Text("1")
                Text("2")
                Text("3")
            }
            .navigationTitle("First")
            
            List {
                Text("one")
                Text("two")
                Text("three")
            }
            .navigationTitle("Second")
            .searchable(text: $keyword, placement: .automatic)
        }
    }
}

struct SearchPlacement_Previews: PreviewProvider {
    static var previews: some View {
        SearchPlacement()
    }
}
