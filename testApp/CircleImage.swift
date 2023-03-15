//
//  CircleImage.swift
//  testApp
//
//  Created by 이유리 on 2023/03/15.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("babyLeon")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 10.0)
            }
            .shadow(radius: 30)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
