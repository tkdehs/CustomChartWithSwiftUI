//
//  IdentifiableList.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct IdentifiableList: View {
    var item = AppleProduct.sampleList
    var body: some View {
        VStack {
            List(item) { item in
                Text(item.name)
            }
        }
    }
}

struct IdentifiableList_Previews: PreviewProvider {
    static var previews: some View {
        IdentifiableList()
    }
}
