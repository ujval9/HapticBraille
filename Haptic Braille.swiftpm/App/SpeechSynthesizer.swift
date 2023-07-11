//
//  File.swift
//  
//
//  Created by Ujval Shah on 16/04/23.
//



import AVFoundation

class SpeechSynthesizer: NSObject, AVSpeechSynthesizerDelegate {
    
    private let synthesizer = AVSpeechSynthesizer()
    
    func speak(_ string: String, language: String = "en-US", rate: Float = AVSpeechUtteranceDefaultSpeechRate) {
        let utterance = AVSpeechUtterance(string: string)
        utterance.voice = AVSpeechSynthesisVoice(language: language)
        // It is used so if a visual impaired person can use thier own setting which they already have in VoiceOver
        utterance.prefersAssistiveTechnologySettings = true
        utterance.rate = rate
        
        do {
              try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default, options: [])
              try AVAudioSession.sharedInstance().setActive(true, options: [])
              
              synthesizer.speak(utterance)
           
            synthesizer.usesApplicationAudioSession = false
          } catch {
              print("Error speaking utterance: \(error.localizedDescription)")
          }
        
    }
    
    func stopSpeaking() {
        synthesizer.stopSpeaking(at: .immediate)
    }
    
}
