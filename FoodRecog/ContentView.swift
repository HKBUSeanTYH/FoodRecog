//
//  ContentView.swift
//  FoodRecog
//
//  Created by xdeveloper on 8/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    //transparent navigation bar
    init() {
        UINavigationBar.changeAppearance(clear: true)
    }
    
    var body: some View {
        TabView {
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            HistoryView().tabItem {
                Image(systemName: "clock.arrow.circlepath")
                Text("History")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//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

//transparent navigation bar
extension UINavigationBar {
    static func changeAppearance(clear: Bool) {
        let appearance = UINavigationBarAppearance()
        
        if clear {
            appearance.configureWithTransparentBackground()
        } else {
            appearance.configureWithDefaultBackground()
        }
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
