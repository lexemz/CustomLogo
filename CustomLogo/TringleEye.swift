//
//  TringleEye.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct TringleEye: View {
    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height

            ZStack {
                CustomTringle()
                    .stroke(lineWidth: 4)
                EyeBorder()
                UpSideWavesAroundEye()
                DownSideWavesAroundEye()
            }
        }
    }
}

struct TringleEye_Previews: PreviewProvider {
    static var previews: some View {
        TringleEye()
            .frame(width: 300, height: 300)
    }
}

struct UpBorder: View {
    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height

            ZStack {
                Curve(
                    from: CGPoint(x: x/5.8, y: y/1.5),
                    to: CGPoint(x: x - x/5.8, y: y/1.5),
                    force: CGPoint(x: x/2, y: y/3)
                )
                .stroke(lineWidth: 4)
            }
        }
    }
}

struct EyeBorder: View {
    var body: some View {
        GeometryReader { geometry in
            let y = geometry.size.height
            let x = geometry.size.width

            UpBorder()
            UpBorder()
                .rotationEffect(.degrees(180))
                .offset(y: y * 0.33)
        }
    }
}

struct UpSideWavesAroundEye: View {
    var body: some View {
        GeometryReader { geometry in
            let y = geometry.size.height
            let x = geometry.size.width

            UpBorder()
                .offset(y: y * -0.06)
            UpBorder()
                .offset(y: y * -0.12)
            UpBorder()
                .offset(y: y * -0.18)
            UpBorder()
                .offset(y: y * -0.24)
            UpBorder()
                .offset(y: y * -0.30)
            UpBorder()
                .offset(y: y * -0.36)
            UpBorder()
                .offset(y: y * -0.42)
            UpBorder()
                .offset(y: y * -0.48)
        }
        .clipShape(CustomTringle())
    }
}

struct DownSideWavesAroundEye: View {
    var body: some View {
        GeometryReader { geometry in
            let y = geometry.size.height
            let x = geometry.size.width

            Curve(
                from: CGPoint(x: x/7, y: y/1.4),
                to: CGPoint(x: x - x/7, y: y/1.4),
                force: CGPoint(x: x/2, y: y * 1.06)
            )
            .stroke(lineWidth: 4)
            
            Curve(
                from: CGPoint(x: x/9, y: y/1.3),
                to: CGPoint(x: x - x/9, y: y/1.3),
                force: CGPoint(x: x/2, y: y * 1.12)
            )
            .stroke(lineWidth: 4)
            Curve(
                from: CGPoint(x: x/12, y: y/1.2),
                to: CGPoint(x: x - x/12, y: y/1.2),
                force: CGPoint(x: x/2, y: y * 1.18)
            )
            .stroke(lineWidth: 4)
            Curve(
                from: CGPoint(x: x/20, y: y/1.13),
                to: CGPoint(x: x - x/20, y: y/1.13),
                force: CGPoint(x: x/2, y: y * 1.24)
            )
            .stroke(lineWidth: 4)
            Curve(
                from: CGPoint(x: x/40, y: y/1.05),
                to: CGPoint(x: x - x/40, y: y/1.05),
                force: CGPoint(x: x/2, y: y * 1.30)
            )
            .stroke(lineWidth: 4)
        }
        .clipShape(CustomTringle())
    }
}
