//
//  AudioPlayer.swift
//  Restart
//
//  Created by Rahul Ravi Prakash on 17/12/21.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(fileName: String, type: String) {
    if let path = Bundle.main.path(forResource: fileName, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("Could not play the sound.")
        }
    }
}
