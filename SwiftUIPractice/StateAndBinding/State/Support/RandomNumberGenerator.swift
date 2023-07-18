//
//  RandomNumberGenerator.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import Foundation

class RandomNumberGenerator: ObservableObject {
    @Published var number: Int
    
    init() {
        number = Int.random(in: 1 ... 100)
        print(#function, self)
    }
    
    deinit {
        print(#function, self)
    }
}
