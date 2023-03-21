//
//  ContentView.swift
//  testApp
//
//  Created by 이유리 on 2023/03/15.
//

import SwiftUI

// 화면에 띄울 뷰 셋팅
struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

// 미리보기 할 뷰 결정하는 struct
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
