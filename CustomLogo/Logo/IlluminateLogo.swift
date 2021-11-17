//
//  IlluminateLogo.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct IlluminateLogo: View {
    @Binding var isPresented: Bool

    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height

            ZStack {
                if isPresented {
                    IlluminateCircle(x: x, y: y)
                        .transition(.springAnimationWithOpacityRemoval(delay: 0.3))
                }
                if isPresented {
                    IlluminateTringle(x: x, y: y)
                        .transition(.springAnimationWithOpacityRemoval(delay: 0))
                }
            }
        }
        .foregroundColor(Color(red: 71.0/255.0, green: 106.0/255.0, blue: 74.0/255.0))
    }
}

struct IlluminateLogo_Previews: PreviewProvider {
    static var previews: some View {
        IlluminateLogo(isPresented: .constant(true))
            .frame(width: 200, height: 200)
    }
}

extension AnyTransition {
    static func springAnimationWithOpacityRemoval(delay: Double) -> AnyTransition {
        let animateionForInsertion = Animation.interactiveSpring(
            response: 0.45,
            dampingFraction: 0.55,
            blendDuration: 1
        )
        .delay(delay)

        let insertion = AnyTransition.scale
            .animation(animateionForInsertion)

        let removal = AnyTransition.opacity
            .animation(.default)

        return .asymmetric(insertion: insertion, removal: removal)
    }
}

struct IlluminateTringle: View {
    let x: Double
    let y: Double

    var body: some View {
        Group {
            ZStack {
                CustomTringle()
                    .foregroundColor(.white)
                    .frame(width: x * 0.90, height: y * 0.90)
                CustomTringle()
                    .stroke(lineWidth: 4)
                    .frame(width: x * 0.90, height: y * 0.90)
                TringleEye()
                    .frame(width: x * 0.75, height: y * 0.75)
                    .position(x: x * 0.5, y: y * 0.526)
                Eyeball()
                    .frame(width: x * 0.23, height: y * 0.23)
                    .position(x: x * 0.5, y: y * 0.65)
            }
            .offset(y: y * -0.115)
        }
    }
}

struct IlluminateCircle: View {
    let x: Double
    let y: Double

    var body: some View {
        Group {
            CustomCircle()
                .stroke(lineWidth: 4)
            CustomCircle()
                .frame(width: x * 0.95, height: y * 0.95)
            TringleStar(starCount: 40, bold: 15)
                .foregroundColor(.white)
                .frame(width: x * 0.95, height: y * 0.95)
        }
    }
}
