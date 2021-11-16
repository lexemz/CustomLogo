//
//  TringleStar.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct TringleStar: View {
    var starCount: Int
    var bold: CGFloat

    var body: some View {
        GeometryReader { geometry in
            let y = geometry.size.height

            ForEach(0..<starCount) { index in
                Group {
                    CustomTringle(angle: .degrees(Double(index) / Double(starCount)) * 360.0)
                        .frame(width: y/bold)
                        .foregroundColor(.red)
                }
            }
        }
    }
}

struct TringleStar_Previews: PreviewProvider {
    static var previews: some View {
        TringleStar(starCount: 15, bold: 15)
    }
}
