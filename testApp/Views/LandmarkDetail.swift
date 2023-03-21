//
//  LandmarkDetail.swift
//  testApp
//
//  Created by 이유리 on 2023/03/21.
//

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark : Landmark
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y : -130)
                .padding(.bottom, -100)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.largeTitle)
                
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.title3)
                .foregroundColor(.gray)
                Divider()
                Text("설명")
                    .font(.title2)
                Text(landmark.description)
                    .font(.subheadline)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarks[0])
    }
}
