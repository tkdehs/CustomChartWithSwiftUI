//
//  CustomizingList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct CustomizingList: View {
    var body: some View {
        VStack {
            List {
                Section() {
                    Text("Hello, List!")
                    Text("List row Insets")
                        .listRowInsets(.init(top: 0, leading: 100, bottom: 0, trailing: 0))
                    Text("List row background")
                        .listRowBackground(Color.yellow)
                    Text("List row Separator")
                        .listRowSeparator(.hidden, edges: .bottom)
                    Text("List row Separator Tint")
                        .listRowSeparatorTint(.blue)
                }
                .listRowBackground(Color.yellow)
                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0))
                
                Section() {
                    Text("하나")
                    Text("테스트")
                }
                .listRowInsets(.init(top: 0, leading: 60, bottom: 0, trailing: 0))
                
                Section() {
                    Text("custome")
                } header: {
                    CustomHeaderView(title: "Lorem ips", imageName: "star")
                }
            }
        }
    }
}

struct CustomizingList_Previews: PreviewProvider {
    static var previews: some View {
        CustomizingList()
    }
}
