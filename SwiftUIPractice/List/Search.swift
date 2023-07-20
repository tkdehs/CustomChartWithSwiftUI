//
//  Search.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct Search: View {
    @State private var keyword = ""
    @State private var items = AppleProduct.sampleList
    
    var body: some View {
        List(items) { item in
            Text(item.name)
        }
        .searchable(text: $keyword, placement: .navigationBarDrawer(displayMode: .always), prompt: "검색어를 입력하세요") {
            Text("Mac").searchCompletion("Mac")
            Label("MacBook",systemImage: "laptopcomputer").searchCompletion("MackBook")
        }
        .onChange(of: keyword) { newValue in
            if newValue.count == 0 {
                items = AppleProduct.sampleList
            }
        }
        .onSubmit(of: .search) {
            if keyword.count > 0 {
                items = AppleProduct.sampleList.filter { $0.name.contains(keyword) }
            } else {
                items = AppleProduct.sampleList
            }
        }
        
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            Search()
                .navigationTitle("Search")
        }
    }
}
