//
//  ContentView.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/12.
//

import SwiftUI
import RxSwift

struct ContentView: View {
    @State var data: String = "0"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(data)
                .font(FONT_NOTOSANS_KR_BOLD(30))
                .padding()
                .background(.yellow)
                .border(Color.purple, width: 1)
            Text(data)
                .font(FONT_NOTOSANS_KR_BOLD(30))
                .background(.yellow)
                .padding()
                .border(Color.purple, width: 1)
            Button {
                data = "\(Int.random(in: 1...100))"
            } label : {
                Text("Update")
            }
                
        }
        .padding()
        .onAppear {
            data = "0"
        }.onDisappear {
            data = "0"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


