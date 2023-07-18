//
//  ViewModel.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    var title = "Hellow"
    @Published var list = [String]()
}
