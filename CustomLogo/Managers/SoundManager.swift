//
//  SoundManager.swift
//  CustomLogo
//
//  Created by Igor on 17.11.2021.
//

import AVFoundation

final class SoundManager {
    static let shared = SoundManager()
    
    private var player: AVAudioPlayer?
    
    private init() {}
    
    func playIlluminateSong() {
        guard let path = Bundle.main.path(forResource: "illuminate.mp3", ofType: nil) else { return }
        let url = URL(fileURLWithPath: path)
        print("is played?")

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}
