//
//  CoreHapticsPlayer.swift
//  
//
//  Created by Ujval Shah on 14/04/23.
//

import SwiftUI
import CoreHaptics
import AVFoundation
import OSLog


class HapticsManager {
    private var engine: CHHapticEngine?
    private let hapticsLogger = Logger(subsystem: "shah.ujval.me.Haptic-Braille", category: "Haptics")
    
    init() {
        prepareHaptics()
    }
    
    private func prepareHaptics() {
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else {return}
        
        do {
            let audioSession = AVAudioSession.sharedInstance()
            engine = try CHHapticEngine(audioSession: audioSession)
            try engine?.start()
        } catch {
            hapticsLogger.error("There was error making the engine: \(error.localizedDescription)")
        }
    }
    
    func playHapticsFile(named filename: String) {
        guard let path = Bundle.main.path(forResource: filename, ofType: "ahap") else {
            return
        }
        
        do {
            try engine?.start()
            try engine?.playPattern(from: URL(fileURLWithPath: path))
        } catch {
            hapticsLogger.error("An error occured playing \(filename): \(error).")
        }
    }
}


