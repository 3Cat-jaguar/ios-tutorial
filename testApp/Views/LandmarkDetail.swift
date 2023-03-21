//
//  LandmarkDetail.swift
//  testApp
//
//  Created by 이유리 on 2023/03/21.
//

import SwiftUI

struct LandmarkDetail: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -100)
            VStack(alignment: .leading) {
                Text("name")
                    .font(.largeTitle)
                
                HStack {
                    Text("park")
                    Spacer()
                    Text("state")
                }
                .font(.title3)
                .foregroundColor(.gray)
                Divider()
                Text("설명")
                    .font(.title2)
                Text("description")
                    .font(.subheadline)
            }
            .padding()
            Spacer()
        }
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail()
    }
}
