//
//  NumberView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/14.
//

import SwiftUI

struct NumberView: View {
    let number:Int
    
    init(number: Int) {
        self.number = number
        print("NumberView init \(number)")
    }
    
    var body: some View {
        Text("\(number)")
            .font(.largeTitle)
            .frame(width: 100, height: 100)
            .background(.yellow)
            .clipShape(Circle())
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(number: 1)
    }
}
