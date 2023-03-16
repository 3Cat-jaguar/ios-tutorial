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
        // VStack 은 LinearLayout 의 orientation vertical 과 같다.
        VStack {
            MapView()
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage()
                .offset(y:-130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading, spacing: 3.0) {
                // layout 에서 ImageView 셋팅 역할
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.green)
                // layout 에서 TextView 셋팅 역할
                Text("This is My First iOS App")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                // orientation horizon 은 HStack
                HStack {
                    Text("test1")
                    // 양 끝으로 정렬될 수 있도록 사이에 공간 추가
                    Spacer()
                    Text("text2")
                    Spacer()
                    Text("text3")
                    Spacer()
                    Text("text4")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                .padding(.horizontal, 50.0)
                .padding(.vertical, 20.0)
                
                Divider()
                    .padding(.vertical, 10.0)
                
                Text("설명")
                    .font(.title)
                Text("내용")
            }
            .padding(.all, 20.0)
            
            Spacer()
        }
    }
}

// 미리보기 할 뷰 결정하는 struct
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
