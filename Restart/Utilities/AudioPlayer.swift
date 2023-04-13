//
//  AudioPlayer.swift
//  Restart
//
//  Created by Jared on 2023-04-12.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

// sound is the name of the sound, type is the file extension
func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            }
        catch {
            print("Could not play the sound file.")
        }
    }
}
