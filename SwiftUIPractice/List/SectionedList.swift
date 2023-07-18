//
//  SectionedList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct SectionedList: View {
    var items = CategorizedProduct.sampleList
    var body: some View {
        VStack {
            List {
                ForEach(items) { section in
                    Section {
                        ForEach(section.list) { item in
                            Text(item.name)
                        }
                    } header: {
                        Text(section.header)
                    } footer: {
                        if let footer = section.footer {
                            Text(footer)
                        }
                    }
                }
            }
            
//            List {
//                Section {
//                    Text("1")
//                    Text("2")
//                }
//                Section {
//                    Text("1")
//                    Text("2")
//                } header: {
//                    Text("header")
//                } footer: {
//                    Text("Footer")
//                }
//                Text("5")
//            }
        }
    }
}

struct SectionedList_Previews: PreviewProvider {
    static var previews: some View {
        SectionedList()
    }
}
