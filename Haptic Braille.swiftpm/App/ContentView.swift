import SwiftUI

//It is the Main View where the TabView and Navigation View is called

struct ContentView: View {
  
    var body: some View {
        if UIDevice.isIpad {
             sidebar
           } else {
             tabview
           }
    }
    
    private var sidebar: some View {
      NavigationView {
        List {
            NavigationLink(destination: AboutTheApp()) {
                Label("AboutTheApp", systemImage: "info.circle")
            }
            
          NavigationLink(destination: BrailleLearning()) {
              Label("Braille Learning", systemImage: "hand.point.up.braille")
          }
          
          NavigationLink(destination: GameView()) {
              Label("Braille Quiz", systemImage: "gamecontroller")
          }
        }
          AboutTheApp()
      }
    }
    private var tabview: some View {
        TabView{
            AboutTheApp()
                .tabItem {
                    Label("AboutTheApp", systemImage: "info.circle")
                }
            BrailleLearning()
                .tabItem {
                    Label("Braille Learning", systemImage: "hand.point.up.braille")
                }
            GameView()
                .tabItem {
                    Label("Braille Quiz", systemImage: "gamecontroller")
                }
          
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewInterfaceOrientation(.landscapeRight)
        
    }
}

