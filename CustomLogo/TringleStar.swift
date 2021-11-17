//
//  TringleStar.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct TringleStar: View {
    let starCount: Int
    let bold: CGFloat

    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height

            ForEach(0..<starCount) { index in
                CustomTringle()
                    .rotationEffect(
                        .degrees(Double(index) / Double(starCount)) * 360.0,
                        anchor: .bottom
                    )
                    .frame(
                        width: x / bold,
                        height: y / 2
                    )
                    .offset(x:x * 0.465)
            }
        }
    }
}

struct TringleStar_Previews: PreviewProvider {
    static var previews: some View {
        TringleStar(starCount: 20, bold: 15)
            .frame(width: 200, height: 200)
    }
}
