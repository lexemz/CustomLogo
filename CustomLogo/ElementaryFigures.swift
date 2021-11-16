//
//  ElementaryFigures.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import SwiftUI

struct CustomTringle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        path.closeSubpath()
        
        return path
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
            CustomTringle()
        }
    }
}
