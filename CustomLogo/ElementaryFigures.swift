//
//  ElementaryFigures.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct CustomTringle: View {
    let angle: Angle
    
    var body: some View {
        GeometryReader { geo in
            let minX: CGFloat = 0
            let maxX = geo.size.width
            let midX = maxX / 2
            
            let minY: CGFloat = 0
            let maxY = geo.size.height
            
            Path { path in
                path.move(to: CGPoint(x: midX, y: minY))
                path.addLine(to: CGPoint(x: minX, y: maxY))
                path.addLine(to: CGPoint(x: maxX, y: maxY))
                path.addLine(to: CGPoint(x: midX, y: minY))
                path.closeSubpath()
            }
        }
        .rotationEffect(angle, anchor: .bottom)
    }
}

struct CustomCircle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: true)

        return path
    }
}

struct Curve: View {
    var from: CGPoint
    var to: CGPoint
    var force: CGPoint
    
    var body: some View {
        Path { path in
            path.move(to: from)
            path.addQuadCurve(to: to, control: force)
        }
    }
}

struct ElementaryFigures_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CustomCircle()
            CustomTringle(angle: .degrees(0))
        }
    }
}
