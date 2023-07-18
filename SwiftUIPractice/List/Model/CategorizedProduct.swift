//
//  CategorizedProduct.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import Foundation

struct CategorizedProduct:Identifiable, Hashable {
    let id = UUID()
    let header: String
    let footer: String?
    let list: [AppleProduct]
}

extension CategorizedProduct {
    static var sampleList: [CategorizedProduct] {
        [CategorizedProduct(header: "iPhone", footer: "Lorem Ipsum", list: AppleProduct.sampleList.filter {  $0.category == "iPhone"} ),
         CategorizedProduct(header: "Mac", footer: nil, list: AppleProduct.sampleList.filter {  $0.category == "Mac"} ),
         CategorizedProduct(header: "iPad", footer: nil, list: AppleProduct.sampleList.filter {  $0.category == "iPad"} )]
    }
}
