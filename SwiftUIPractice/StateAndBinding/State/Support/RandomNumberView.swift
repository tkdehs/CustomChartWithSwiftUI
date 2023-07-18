//
//  NumberView.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct RandomNumberView: View {
    
    @EnvironmentObject var generator:RandomNumberGenerator
    
    var body: some View {
        Text("\(generator.number)")
            .font(.largeTitle)
    }
}

struct RandomNumberView_Previews: PreviewProvider {
    static var previews: some View {
        RandomNumberView()
            .environmentObject(RandomNumberGenerator())
    }
}
