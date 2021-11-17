//
//  ContentView.swift
//  CustomLogo
//
//  Created by Igor on 16.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        IlluminateLogo()
            .frame(width: 200, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .frame(width: 250, height: 250)
    }
}
