//
//  Group.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/17.
//

import SwiftUI

struct Group_Tutorials: View {
    var body: some View {
        VStack {
            Group {
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
            }
            .font(.title2)
            
            Group {
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
                Text("Hellow world")
            }.padding()
        }
    }
}

struct Group_Previews: PreviewProvider {
    static var previews: some View {
        Group_Tutorials()
    }
}
