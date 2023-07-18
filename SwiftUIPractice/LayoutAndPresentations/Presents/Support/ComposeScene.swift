//
//  ComposeScene.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/18.
//

import SwiftUI

struct ComposeScene: View {
    @State private var title: String = ""
    @State private var content: String = ""
    
    @Binding var edited:Bool
    
    var body: some View {
        NavigationView {
            Form {
                
                TextField("Title", text: $title)
                    .onChange(of: title) { _ in
                        edited = title != "" || content != ""
                    }
                
                TextEditor(text: $content)
                    .onChange(of: title) { _ in
                        edited = title != "" || content != ""
                    }
            }
            .navigationTitle("Compose")
        }
    }
}

struct ComposeScene_Previews: PreviewProvider {
    static var previews: some View {
        ComposeScene(edited: .constant(true))
    }
}
