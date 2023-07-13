//
//  CustomChartWithSwiftUIApp.swift
//  CustomChartWithSwiftUI
//
//  Created by PNX on 2023/07/12.
//

import SwiftUI

@main
struct CustomChartWithSwiftUIApp: App {
    var body: some Scene {
        MyScene()
    }
}

struct MyScene : Scene {
    @Environment(\.scenePhase) private var scenePhase

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .onChange(of: scenePhase) { phase in
            // 상태에 따라 기능을 처리 가능.
            // 주의해야 할 점은 여러개의 Scene을 갖고있다면 해당 Scene이 Active 중이지 않아도 다른 Scene이 Active중이라면
            // Active를 리턴한다. Scene의 상태에 따라 구현 할 때 해당부분을 주의하며 구현해야한다.
            print("phase : \(phase)")
            if phase == .background {
            }
        }
    }
}

