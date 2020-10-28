//
//  PlaySound.swift
//  Slot Machine
//
//  Created by Muhammad Ilham Ramadhan on 23/10/20.
//  Copyright © 2020 Muhammad Ilham Ramadhan. All rights reserved.
//

import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Error")
        }
    }
}
