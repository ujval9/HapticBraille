//
//  BrailleLearning.swift
//  Haptic Braille
//
//  Created by Ujval Shah on 02/04/23.
//

import SwiftUI
import WrappingHStack
import AVFoundation
struct LetterSelctor: View {
    let textSpoken = SpeechSynthesizer()
    let alphabets = Array("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    @Binding var selectedAlphabet : String
    let selectionFeedback = UISelectionFeedbackGenerator()
    var body: some View {
        // Using to Wrap the Hstack for the Keyboard View so view does not overflow https://github.com/dkk/WrappingHStack
        
        WrappingHStack(alphabets, id: \.self,alignment: .center,spacing: .constant(5)){ alphabet in
          
                    Button(action: {
                        selectedAlphabet = String(alphabet)
                        //Will only play when VoiceOver is not there
                        if(!UIAccessibility.isVoiceOverRunning){
                            textSpoken.speak(String(alphabet).lowercased())
                        }
                        selectionFeedback.selectionChanged()
                    }) {
                        Text(String(alphabet))
                            .font(.headline)
                            .foregroundColor(selectedAlphabet == String(alphabet) ? .white : .black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .background(selectedAlphabet == String(alphabet) ? Color.blue : Color.gray.opacity(0.5))
                            .cornerRadius(10)
                    }.padding(.vertical,5)
                    
                
        }
        
       
    }
}

struct BrailleLearning: View {
    @State private var brailleLetter: BrailleLetters = .A
    @State private var selectedAlphabet = ""
    @State var isOn = false
    @State private var lettersBraille : [BrailleLetters] = [.A,.B,.C,.D,.E,.F,.G,.H,.I,.J,.K,.L,.M,.N,.O,.P,.Q,.R,.S,.T,.U,.V,.W,.X,.Y,.Z]
    var body: some View {
        VStack(spacing: 20) {
            if !selectedAlphabet.isEmpty {
                Text("Your Selected Alphabet is \(selectedAlphabet)")
                    .padding(.leading, 5)
                    .foregroundColor(Color.primary)
                    .font(.title3.weight(.medium))
                    .multilineTextAlignment(.center)
            }
            VStack(){
            if !selectedAlphabet.isEmpty {
                switch selectedAlphabet {
                case "A":
                    lettersBraille[0].brailleLettersView
                case "B":
                    lettersBraille[1].brailleLettersView
                case "C":
                    lettersBraille[2].brailleLettersView
                case "D":
                    lettersBraille[3].brailleLettersView
                case "E":
                    lettersBraille[4].brailleLettersView
                case "F":
                    lettersBraille[5].brailleLettersView
                case "G":
                    lettersBraille[6].brailleLettersView
                case "H":
                    lettersBraille[7].brailleLettersView
                case "I":
                    lettersBraille[8].brailleLettersView
                case "J":
                    lettersBraille[9].brailleLettersView
                case "K":
                    lettersBraille[10].brailleLettersView
                case "L":
                    lettersBraille[11].brailleLettersView
                case "M":
                    lettersBraille[12].brailleLettersView
                case "N":
                    lettersBraille[13].brailleLettersView
                case "O":
                    lettersBraille[14].brailleLettersView
                case "P":
                    lettersBraille[15].brailleLettersView
                case "Q":
                    lettersBraille[16].brailleLettersView
                case "R":
                    lettersBraille[17].brailleLettersView
                case "S":
                    lettersBraille[18].brailleLettersView
                case "T":
                    lettersBraille[19].brailleLettersView
                case "U":
                    lettersBraille[20].brailleLettersView
                case "V":
                    lettersBraille[21].brailleLettersView
                case "W":
                    lettersBraille[22].brailleLettersView
                case "X":
                    lettersBraille[23].brailleLettersView
                case "Y":
                    lettersBraille[24].brailleLettersView
                case "Z":
                    lettersBraille[25].brailleLettersView
                    
                default:
                    Text("No Braille Circle for this alphabet")
                }
            } else {
                Text("Select an alphabet to view its Braille Circle")
            }
            
        }
        VStack {
            LetterSelctor(selectedAlphabet: $selectedAlphabet)
        }.padding(5)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .center)
        
    }

}

struct BrailleLearning_Previews: PreviewProvider {
    static var previews: some View {
        BrailleLearning()
    }
}
