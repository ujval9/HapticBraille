//
//  SwiftUIView.swift
//  
//
//  Created by Ujval Shah on 15/04/23.
//

import SwiftUI

struct BrailleSplashScreen: View {
    @State private var animate1 = false
    @State private var animate2 = false
    @State private var animate3 = false
    @State private var animate4 = false
    @State private var animate5 = false
    @State private var animate6 = false
    @State private var isActive = false
    
    //A simple Splash Screen , I wanted to add Corehaptic in the Splash Screen but it made the launch slower
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack {
            Color.black
                .ignoresSafeArea()
            
            Circle()
                .foregroundColor(.red)
                .frame(width: 70, height: 70)
                .offset(x: animate1 ? -50 : 0, y: animate1 ? -80 : 0)
            
            Circle()
                .foregroundColor(.orange)
                .frame(width: 70, height: 70)
                .offset(x: animate2 ? -50 : 0, y: 0)
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 70, height: 70)
                .offset(x: animate3 ? -50 : 0, y: animate3 ? 80 : 0)
            
            Circle()
                .foregroundColor(.green)
                .frame(width: 70, height: 70)
                .offset(x: animate4 ? 50 : 0, y: animate4 ? -80 : 0)
            
            Circle()
                .foregroundColor(.blue)
                .frame(width: 70, height: 70)
                .offset(x: animate5 ? 50 : 0, y: 0)
            
            Circle()
                .foregroundColor(.purple)
                .frame(width: 70, height: 70)
                .offset(x: animate6 ? 50 : 0, y: animate6 ? 80 : 0)
        }
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.2)) {
                animate1 = true
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.3)) {
                animate2 = true
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.4)) {
                animate3 = true
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.5)) {
                animate4 = true
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.6)) {
                animate5 = true
            }
            withAnimation(Animation.easeInOut(duration: 0.5).delay(0.7)) {
                animate6 = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 ){
                withAnimation{
                    self.isActive = true
                    
                }
                
            }
            
        }
       
            
        }
        
    }
}

   
         

struct BrailleSplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        BrailleSplashScreen()
    }
}
