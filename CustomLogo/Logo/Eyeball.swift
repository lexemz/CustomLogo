//
//  Eyeball.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct Eyeball: View {
    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height
            
            ZStack {
                CustomCircle()
                    .stroke(lineWidth: 4)
                TringleStar(starCount: 20, bold: 5)
                    .offset(x: x * -0.06)
                CustomCircle()
                    .frame(width: x * 0.66, height: y * 0.66)
                    .foregroundColor(.white)
                CustomCircle()
                    .frame(width: x * 0.60, height: y * 0.60)
                CustomCircle()
                    .frame(width: x * 0.20, height: y * 0.20)
                    .foregroundColor(.white)
                    .position(x: x * 0.53, y: y * 0.37)
            }

        }
    }
}

struct Eyeball_Previews: PreviewProvider {
    static var previews: some View {
        Eyeball()
            .frame(width: 200, height: 200)
    }
}
