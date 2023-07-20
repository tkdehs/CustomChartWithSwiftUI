//
//  ForEach.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct ForEach_Tutorials: View {
    var items = AppleProduct.sampleList
    
    var body: some View {
        VStack {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}

struct ForEach_Previews: PreviewProvider {
    static var previews: some View {
        ForEach_Tutorials()
    }
}
