//
//  IlluminateLogo.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct IlluminateLogo: View {
    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height
            
            ZStack {
                CustomCircle()
                    .stroke(lineWidth: 4)
                CustomCircle()
                    .frame(width: x * 0.95, height: y * 0.95)
                TringleStar(starCount: 40, bold: 15)
                    .foregroundColor(.white)
                    .frame(width: x * 0.95, height: y * 0.95)
                Group {
                    CustomTringle()
                        .foregroundColor(.white)
                        .frame(width: x * 0.90, height: y * 0.90)
                    CustomTringle()
                        .stroke(lineWidth: 4)
                        .frame(width: x * 0.90, height: y * 0.90)
                    TringleEye()
                        .frame(width: x * 0.75, height: y * 0.75)
                        .offset(y: y * 0.03)
                    Eyeball()
                        .frame(width: x * 0.23, height: y * 0.23)
                        .position(x: x * 0.5, y: y * 0.65)
                }
                .offset(y: y * -0.115)
            }
            .frame(width: 200, height: 200)
        }
        .foregroundColor(Color(red: 71.0/255.0, green: 106.0/255.0, blue: 74.0/255.0))
    }
}

struct IlluminateLogo_Previews: PreviewProvider {
    static var previews: some View {
        IlluminateLogo()
            .frame(width: 200, height: 200)
    }
}
