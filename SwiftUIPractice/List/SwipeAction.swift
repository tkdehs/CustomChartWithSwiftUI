//
//  SwipeAction.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/19.
//

import SwiftUI

struct SwipeAction: View {
    @State private var favorites = [AppleProduct]()
    @State private var allProducts = AppleProduct.sampleList
    
    var body: some View {
        List {
            Section("Favorites") {
                ForEach(favorites) { favorite in
                    Text(favorite.name)
                        .swipeActions {
                            Button(role: .destructive) {
                                withAnimation {
                                    if let index = favorites.firstIndex(of: favorite) {
                                        favorites.remove(at: index)
                                    }
                                }
                            } label: {
                                Image(systemName: "trash")
                            }

                        }
                }
            }
            
            Section("All Products") {
                ForEach(allProducts) { product in
                    Text(product.name)
                        .swipeActions {
                            Button {
                                withAnimation {
                                    favorites.append(product)
                                }
                            } label: {
                                Image(systemName: "hand.thumbsup")
                            }
                            .tint(.blue)
                        }
                        .swipeActions(edge:.leading, allowsFullSwipe: false) {
                            Button(role: .destructive) {
                                withAnimation {
                                    if let index = allProducts.firstIndex(of: product) {
                                        allProducts.remove(at: index)
                                    }
                                }
                            } label: {
                                Image(systemName: "trash")
                            }
                            
                            Button {
                                
                            } label: {
                                Text("Menu")
                            }
                        }
                }
            }
        }
    }
}

struct SwipeAction_Previews: PreviewProvider {
    static var previews: some View {
        SwipeAction()
    }
}
