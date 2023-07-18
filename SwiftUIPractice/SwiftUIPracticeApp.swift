//
//  CustomChartWithSwiftUIApp.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/12.
//

import SwiftUI

@main
struct SwiftUIPracticeApp: App {
    var body: some Scene {
        MyScene()
    }
}

struct MyScene : Scene {

    var body: some Scene {
        WindowGroup {
            ScrollView_Tutorials(presentModal: .constant(true))
        }
    }
}

