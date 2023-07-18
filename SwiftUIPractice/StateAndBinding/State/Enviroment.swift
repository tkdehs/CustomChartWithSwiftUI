//
//  Enviroment.swift
//  SwiftUIPractice
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct Enviroment_Tutorials: View {
    @Environment(\.colorScheme) var currentColorScheme
    
    @Environment(\.horizontalSizeClass) var currentHorizontalSizeClass
    var body: some View {
        List {
            HStack {
                Text("Color Scheme")
                Spacer()
                Text(currentColorScheme == .dark ? "Dark Mode" : "Light Mode")
            }
            .padding()
            
            HStack {
                Text("Horicontal Size Class")
                Spacer()
                Text(currentHorizontalSizeClass == .compact ? "Compact" : "Regular")
            }
            .padding()
            
        }
    }
}

struct Enviroment_Previews: PreviewProvider {
    static var previews: some View {
        Enviroment_Tutorials()
    }
}
