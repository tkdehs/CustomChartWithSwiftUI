//
//  Popover.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct Popover_Tutorials: View {
    @State private var showPopover = false
    
    var body: some View {
        Button{
            showPopover = true
        } label: {
            Text("Show Popover")
        }
        .padding()
        .popover(isPresented: $showPopover) {
            Form_Tutorials()
                .frame(minWidth: 320, minHeight: 400)
        }
    }
}

struct Popover_Previews: PreviewProvider {
    static var previews: some View {
        Popover_Tutorials()
    }
}
