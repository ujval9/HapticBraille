//
//  SwiftUIView.swift
//  
//
//  Created by Ujval Shah on 14/04/23.
//

import SwiftUI
import AVFoundation

struct AboutTheApp: View {
    @State var Braillecell = BrailleLetters.all
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Welcome to the \nHaptic Braille App")
                        .font(.title)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                    Spacer()
                    Text("According to the World Health Organization, there are approximately 285 million people worldwide who are visually impaired, and of these, around 90 percent are over the age of 50. While some people may be born with visual impairments or develop them in childhood, the majority of cases of visual impairment occur later in life.")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .lineSpacing(8)
                    VStack(alignment: .leading, spacing: 10)  {
                        Text("What is Braille?")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                        .padding(.top, 20)
                        Text("Braille is a writing system that allows people who are blind or visually impaired to read and write tactilely. It was invented by Louis Braille. The Braille system consists of a series of raised dots arranged in patterns, with each pattern representing a letter, number, punctuation mark, or other symbol.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                        Text("There are six dots in each Braille cell, arranged in two columns of three dots each. The dots are raised on the paper or other surface, allowing the reader to feel them with their fingers.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                        
                    }.accessibilityElement(children:.combine)
                    
                   
                    VStack (alignment: .leading, spacing: 10){
                        Text("Need for the App?")
                            .font(.title3)
                            .fontWeight(.semibold)
                        .padding(.top, 20)
                        Text("A form of communication is really vital to interact with the outside world for people who are visually impaired, and there might not be access to Braille boards to learn Braille, so the app enables users to learn Braille.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                        Text("As we now know, Braille uses a series of raised dots to learn and read Braille. However, as a mobile screen uses a flat surface, we can't interact with it. Therefore, I have designed an app which has different haptic feedback and sound for each of the 6 Braille dots, so users can distinguish each dot and recognise the Braille pattern.")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .lineSpacing(8)
                    }.accessibilityElement(children:.combine)
               
                    Text("You can try it out for yourself by \ntouching the below pattern")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 20)
                }
                .padding(.horizontal, 20)
                Spacer()
                VStack {
                    Braillecell.brailleLettersView
                }
                VStack (alignment: .leading, spacing: 10){
                    Text("About The App")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .padding(.top, 20)
                    Text("The App has Two Screens")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                    Text("First is The Learning Screen where you can toggle through all the letters and learn them")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                    Text("Second A quiz where you can feel the Braille letter and provide select the correct answer")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                    Text("The App uses CoreHaptics to play Haptics from custom AHAP file , also has VoiceOver support and AVSpeechSynthesizer() to speak out letters in the Braille Learning View when VoiceOver is not enabled")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .padding(.top, 5)
                        .padding(.bottom,10)
                }.padding(.horizontal, 18)
                    .accessibilityElement(children:.combine)
              
                
            }
        }

    }
}

struct AboutTheApp_Previews: PreviewProvider {
    static var previews: some View {
        AboutTheApp()
    }
}
