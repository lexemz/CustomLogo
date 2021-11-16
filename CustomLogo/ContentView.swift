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
                    .stroke(lineWidth: 4)
                CustomCircle()
                    .frame(width: x * 0.95, height: y * 0.95)
                TringleStar(starCount: 30, bold: 15)
                    .foregroundColor(.white)
                    .frame(width: x * 0.90, height: y * 0.90)
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
                }
                .offset(y: y * -0.115)
            }
            .frame(width: 200, height: 200)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 200, height: 200)
    }
}
