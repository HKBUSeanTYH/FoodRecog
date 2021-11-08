//
//  ContentView.swift
//  FoodRecog
//
//  Created by xdeveloper on 8/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var image: Image? = nil
    @State var showCaptureImageView = true
    
    var body: some View {
        ZStack{
            NavigationView{
                VStack{
                    HStack{
                        Spacer()
                        image?.resizable()
                            .frame(width: 250, height: 250)
                        //                .clipShape(Circle())
                        //                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        //                .shadow(radius: 10)
                        Spacer()
                    }
                    
                    
                }.navigationBarTitle(Text("Food Recognizer"), displayMode: .inline)
                .toolbar{
                    Button(action: {
                        self.showCaptureImageView.toggle()
                    }){
                        VStack {
                            Image(systemName: "camera")
                            Text("Camera")
                        }
                    }
                }
            }.navigationViewStyle(StackNavigationViewStyle())
            
            if (showCaptureImageView) {
                CaptureImageView(isShown: $showCaptureImageView, image: $image)
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
