//
//  StaticList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct StaticList: View {
    var body: some View {
        List {
            HStack {
                Text("Hellow World")
                Text("Hellow World")
            }
            Text("Hellow World")
            
            Image(systemName: "star")
            
            Toggle(isOn: .constant(true)) {
                Text("On")
            }
        }
    }
}

struct StaticList_Previews: PreviewProvider {
    static var previews: some View {
        StaticList()
    }
}
