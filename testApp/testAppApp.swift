//
//  testAppApp.swift
//  testApp
//
//  Created by 이유리 on 2023/03/15.
//

import SwiftUI

@main // 앱 시작지점(entry point) 를 표시하는 부분
struct testAppApp: App {
    // 어떤 뷰를 띄울 것인지 결정하여 반환할 수 있다. 여러 scene 을 보내는 것도 가능
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
