//
//  ContentView.swift
//  CustomLogo
//
//  Created by Igor on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height

            Path { path in
                path.move(to: CGPoint(x: x / 2, y: 0))
                path.addLine(to: CGPoint(x: x, y: 200))
                path.addLine(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: x/2, y: 0))
                path.closeSubpath()
            }
            .stroke(lineWidth: 5)
            
            curve
            curve
                .rotationEffect(.degrees(180))
                .offset(y: y - 170)
            circle
            
        }
        .foregroundColor(.green)

    }

    private var curve: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: x/4.5, y: y/1.75))
                path.addQuadCurve(
                    to: CGPoint(x: x - x/4.5, y: y/1.75),
                    control: CGPoint(x: x/2, y: y/4))
            }
            .stroke(lineWidth: 5)
        }
    }
    
    private var circle: some View {
        GeometryReader { geometry in
            let x = geometry.size.width
            let y = geometry.size.height
            
            Path { path in
                path.move(to: CGPoint(x: x/2, y: 0))
                path.addQuadCurve(
                    to: CGPoint(x: x, y: y/2),
                    control: CGPoint(x: x, y: 0)
                )
                path.addQuadCurve(
                    to: CGPoint(x: x/2, y: y),
                    control: CGPoint(x: x, y: y)
                )
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 200, height: 200)
    }
}

struct MyShape : Shape {
    func path(in rect: CGRect) -> Path {
        var p = Path()

        p.addArc(center: CGPoint(x: 100, y:100), radius: 50, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: true)

        return p.strokedPath(.init(lineWidth: 3, dash: [5, 3], dashPhase: 10))
    }
}
