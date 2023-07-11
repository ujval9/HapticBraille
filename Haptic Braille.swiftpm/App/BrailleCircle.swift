//
//  BrailleCircle.swift
//  Haptic Braille
//
//  Created by Ujval Shah on 02/04/23.
//

import SwiftUI


struct BrailleCircle : View  {
  
  let color: Color
  let isFilled : Bool
  let ahapname: String
  @State private var isTapped = false
//Creating an Instance of HapticManager so can play the custom AHAP file
  let hapticPlayer = HapticsManager()
    var body: some View {
        Circle()
            .frame(width: 75, height: 75)
            .foregroundColor(isFilled ? color : .clear)
            .overlay(Circle().stroke(color, lineWidth: 2))
            .onTapGesture {
                if ahapname != "_empty_"
                {   
                    hapticPlayer.playHapticsFile(named: ahapname)
                    
                }
                else{
                    print("Hello")
                }
            }
            .accessibilityAddTraits(.isButton)
            .accessibilityAddTraits(.playsSound)
        
            
        
    }

}

#if DEBUG
    struct BrailleCircle_Previews: PreviewProvider {
        static var previews: some View {
            BrailleCircle(color: .red, isFilled: true , ahapname: "dot1")
        }
    }
#endif

