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
            
            ZStack {
                CustomCircle()
                    .stroke(lineWidth: 5)
                CustomCircle()
                    .frame(width: x - 15)
//                TringleStar(starCount: 10)    
            }
        }
        .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 200, height: 200)
    }
}

struct CustomTringle: View {
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

//struct TringleStar: View {
//    var starCount: Int
//
//    var body: some View {
//        GeometryReader { geometry in
//            let x = geometry.size.width
//            let y = geometry.size.height
//
//            ForEach(1..<starCount) { index in
//                Group {
//                    CustomTringle()
//                        .frame(width: y/15, height: x/2.5)
//                        .position(x: x/2, y: y/4)
//                        .foregroundColor(.red)
//                        .rotationEffect(.degrees(Double(index) / Double(starCount)))
//                }
//            }
//        }
//    }
//}
