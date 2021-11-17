//
//  ContentView.swift
//  CustomLogo
//
//  Created by Igor on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showIlluminate = false

    var body: some View {
        VStack {
            Spacer()

            if showIlluminate {
                IlluminateLogo()
                    .frame(width: 250, height: 250)
                    .transition(.customAnimation)
            }

            Spacer()
            Button(action: buttonAction) {
                Text(showIlluminate ? "HIDE ILLUMINATE" : "SHOW ILLUMINATE")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color(red: 71.0/255.0, green: 106.0/255.0, blue: 74.0/255.0))
                    .clipShape(Capsule())
            }
            .padding(.bottom, 30)
        }
    }

    private func buttonAction() {
        withAnimation {
            showIlluminate.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension AnyTransition {
    static var customAnimation: AnyTransition {
        return .asymmetric(insertion: .scale, removal: .opacity)
    }
}
