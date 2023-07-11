//
//  File.swift
//  
//
//  Created by Ujval Shah on 12/04/23.
//

import SwiftUI

// Data Model which creates Braille Cells using the BrailleCircle Struct.
enum BrailleLetters:CaseIterable {
    
    
    case A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,all
    
  
    var brailleLettersView: some View  {
    
        HStack{
            switch self {
            case .A :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname:"Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }
            case .B :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }
            case .C :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .D :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
                
            case .E:
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue,isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .F:
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .G :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue ,isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .H :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .I :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .J :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .K :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow,isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .L :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
                
            case .M :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .N :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .O :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .P :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname:"Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .Q :
                HStack {
                    VStack {
                        BrailleCircle(color: .red,isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .R :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .S :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname:"Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        
                    }
                }.padding()
            case .T :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .U :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .V :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .W :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple,isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .X :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .Y :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: true,ahapname: "Circle4").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5").accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .Z :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange,isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3").accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green, isFilled: false,ahapname: "_empty_").accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue, isFilled: true,ahapname: "Circle5")
                            .accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6").accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()
            case .all :
                HStack {
                    VStack {
                        BrailleCircle(color: .red, isFilled: true,ahapname: "Circle1").accessibilityLabel("Braille Circle 1")
                        BrailleCircle(color: .orange, isFilled: true,ahapname: "Circle2")
                            .accessibilityLabel("Braille Circle 2")
                        BrailleCircle(color: .yellow, isFilled: true,ahapname: "Circle3")
                            .accessibilityLabel("Braille Circle 3")
                    }
                    VStack {
                        BrailleCircle(color: .green,isFilled: true,ahapname: "Circle4")
                            .accessibilityLabel("Braille Circle 4")
                        BrailleCircle(color: .blue,isFilled: true,ahapname: "Circle5")
                            .accessibilityLabel("Braille Circle 5")
                        BrailleCircle(color: .purple, isFilled: true,ahapname: "Circle6")
                            .accessibilityLabel("Braille Circle 6")
                        
                    }
                }.padding()

                
            }
            
            
        }
        
    }
    
}
extension View {
    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}
