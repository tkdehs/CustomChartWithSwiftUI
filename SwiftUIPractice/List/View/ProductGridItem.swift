//
//  ProductGridItem.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct ProductGridItem: View {
    let product: AppleProduct
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(product.category)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text(product.name)
                .font(.title2)
            Text(product.summary)
                .font(.caption)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(.gray.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Spacer()
        }
    }
}

struct ProductGridItem_Previews: PreviewProvider {
    static var previews: some View {
        ProductGridItem(product: AppleProduct.sampleList[0])
    }
}
