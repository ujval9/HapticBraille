//
//  GameView.swift
//  Haptic Braille
//
//  Created by Ujval Shah on 02/04/23.
//

import SwiftUI
import AVFoundation

struct GameView: View {

    @Environment(\.colorScheme) private var colorScheme
    let synthesizer = AVSpeechSynthesizer()
    @State private var quizCompleted = false
    @State private var showingHUD = false
    @State private var currentQuestionIndex = 0
    @State private var currentAnswerIsCorrect = false
    @State private var currentAnswerIsFalse = false
    @State private var isAnimating = false
    let hapticPlayer2 = HapticsManager()

    @State var animateShake: Int = 0

    // Quiz data
   @State private var letters: [BrailleLetters] = [.Z,.T,.U]
    private var questions = [" Touch the braille letter below and guess it", "Touch the braille letter below and guess it","Touch the braille letter below and guess it"]
    private var answers = [["M", "Z", "D", "A"],["D", "T", "W", "_empty_"],["L", "U", "_empty_", "_empty_"]]
    private var correctAnswers = [1,1,1]

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                if !quizCompleted {
                    HStack {
                        Spacer()
                        VStack {
                            Text("Question \(currentQuestionIndex+1) of \(questions.count)")
                                .font(.caption)
                                .foregroundColor(.secondary)
                                .padding(.bottom, 8)

                            Text(questions[currentQuestionIndex])
                                .fontWeight(.semibold)
                                .multilineTextAlignment(.center)
                                .foregroundColor(Color.primary)
                                .font(.title3)
                                .transition(.scale)
                                .lineSpacing(1.5)
                                .modifier(ShakeEffect(animatableData: CGFloat(animateShake)))
                        }
                        .padding(.horizontal, 30)
                        Spacer()
                    }
                    .frame(minHeight: 60, maxHeight: 100)
                    .background(Color(uiColor: .secondarySystemBackground))
                    .cornerRadius(10)
                    .padding(.horizontal)
                    .padding(.vertical)

                    VStack {
                        letters[currentQuestionIndex].brailleLettersView
                    }
                    .padding(.top, 10)

                    VStack(spacing: 10) {
                        ForEach(0..<4) { index in
                            if answers[currentQuestionIndex][index] != "_empty_" {

                                Button {
                                    if index == correctAnswers[currentQuestionIndex] {

                                        let utterance = AVSpeechUtterance(string: "That's correct")
                                        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                                        utterance.rate = 0.5
                                        utterance.pitchMultiplier = 1.0
                                        synthesizer.speak(utterance)
                                        hapticPlayer2.playHapticsFile(named: "Success")
                                        currentAnswerIsCorrect = true
                                        currentAnswerIsFalse = false
                                    } else {
                                        let utterance = AVSpeechUtterance(string:"That's wrong, try again")
                                        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                                        utterance.rate = 0.5
                                        utterance.pitchMultiplier = 1.0
                                        synthesizer.speak(utterance)
                                        hapticPlayer2.playHapticsFile(named: "Error")
                                        currentAnswerIsCorrect = false
                                        currentAnswerIsFalse = true
                                    }

                                    withAnimation(Animation.timingCurve(0.47, 1.62, 0.45, 0.99, duration: 0.4)) {
                                        showingHUD.toggle()
                                        isAnimating = true
                                    }

                                    // Auto dismiss HUD
                                    if (!currentAnswerIsCorrect) {
                                        withAnimation(.default) {
                                            animateShake += 1
                                        }
                                        DispatchQueue.main.asyncAfter(deadline: .now() + (2.5) ) {
                                            withAnimation() {
                                                showingHUD = false
                                                isAnimating = false
                                                currentAnswerIsFalse = false
                                            }
                                        }
                                        // show next question
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + (1.7) ) {
                                            nextQuestion()
                                            withAnimation() {
                                                showingHUD = false
                                                isAnimating = false
                                                currentAnswerIsFalse = false
                                            }
                                        }
                                    }
                                } label: {
                                    HStack {
                                        Spacer()
                                        Text(answers[currentQuestionIndex][index])
                                            .font(.callout)
                                            .foregroundColor(.accentColor)
                                        Spacer()
                                    }
                                    .padding(12)
                                    .background(Color.accentColor.opacity(0.13))
                                    .cornerRadius(10)
                                }
                                .padding(.horizontal, 20)
                            }
                        }
                        .disabled(isAnimating)
                    }
                    .padding(.top, 35)
                    .transition(.asymmetric(insertion: .move(edge: .trailing).combined(with: .opacity), removal: .opacity) )
                    Spacer()

                } else {
                    // Quiz was completed
                    completedView
                        .transition(.asymmetric(insertion: .move(edge: .trailing).combined(with: .opacity), removal: .opacity) )
                }
            }

            if showingHUD {
                HUD {
                    if (currentAnswerIsCorrect) {
                        HStack(spacing: 25) {
                            HStack{
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.green)
                                Text("That's correct")
                                    .padding(.leading, 5)
                                    .foregroundColor(Color.primary)
                            }
                        }
                    } else {
                        HStack{
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.red)
                            Text("That's wrong, try again")
                                .padding(.leading, 5)
                        }
                    }
                }
                .zIndex(1)
                .transition(AnyTransition.move(edge: .bottom).combined(with: .opacity))
            }
        }
    }

    func nextQuestion() {
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
            withAnimation {
                showingHUD = false
                isAnimating = false
                currentAnswerIsCorrect = false
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + (0.01) ) {
                withAnimation(Animation.timingCurve(0.65, 0, 0.35, 1, duration: 0.4)){
                    quizCompleted = true
                }
                currentQuestionIndex = 0
            }
        }

    }

    var completedView: some View {
        HStack{
            Spacer()
            VStack(spacing: 20){
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.green)
                    .font(.largeTitle)
                Text("Congratulations, you have successfully completed the quiz")
                    .padding(.leading, 5)
                    .foregroundColor(Color.primary)
                    .font(.title3.weight(.medium))
                    .multilineTextAlignment(.center)
                
                Text("Hope to See You at the WWDC23")
                    .padding(.leading, 5)
                    .foregroundColor(Color.primary)
                    .font(.title3.weight(.medium))
                    .multilineTextAlignment(.center)
                Button {
                    withAnimation(Animation.timingCurve(0.65, 0, 0.35, 1, duration: 0.4)) {
                        quizCompleted = false
                    }
                } label: {
                    Text("Restart")
                        .padding(12)
                        .padding(.leading, 7)
                        .padding(.trailing, 7)
                        .background(Color.accentColor.opacity(0.1))
                        .cornerRadius(10)
                }
                .padding(.top, 50)

            }
            Spacer()
        }
    }
}



struct HUD<Content: View>: View {

    @Environment(\.colorScheme) private var colorScheme

    @ViewBuilder let content: Content

    var body: some View {
        content
            .padding(.horizontal, 12)
            .padding(16)
            .background(
                Capsule()
                    .foregroundColor(colorScheme == .dark ? Color(UIColor.secondarySystemBackground) :  Color(UIColor.systemBackground))
                    .shadow(color: Color(.black).opacity(0.15), radius: 10, x: 0, y: 4)
            )
            .padding(20)
    }
}



struct ShakeEffect: GeometryEffect {
    var animatableData: CGFloat

    func effectValue(size: CGSize) -> ProjectionTransform {
        ProjectionTransform(CGAffineTransform(translationX:
                                                10 * sin(animatableData * .pi * CGFloat(3)),
                                              y: 0)
        )
    }
}
struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
