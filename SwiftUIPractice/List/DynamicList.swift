//
//  DynamicList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct DynamicList: View {
    var item = Product.sampleList
    var body: some View {
        VStack {
            List(item, id: \.name) { item in
                Text(item.name)
            }
        }
    }
}

struct DynamicList_Previews: PreviewProvider {
    static var previews: some View {
        DynamicList()
    }
}
