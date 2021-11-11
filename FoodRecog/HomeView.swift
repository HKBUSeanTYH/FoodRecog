//
//  HomeView.swift
//  FoodRecog
//
//  Created by xdeveloper on 11/11/2021.
//

import SwiftUI

struct HomeView: View {
    
    let screenwidth = UIScreen.main.bounds.width
    
    @State var image: Image? = nil
    @State var showCaptureImageView = true
    
    var body: some View {
        ZStack{
//            NavigationView{
//                .navigationBarTitle(Text(""), displayMode: .inline)
//                .toolbar{
//
//                }
//            }.navigationViewStyle(StackNavigationViewStyle())
            VStack{
                HStack{
                    Spacer()
                    image?.resizable()
                        .frame(width: screenwidth, height: 300)
                        //camera overlaps navigation bar
                        //.edgesIgnoringSafeArea(.top)

                    //                .clipShape(Circle())
                    //                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    //                .shadow(radius: 10)
                    Spacer()
                }
                Spacer()
            }
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        self.showCaptureImageView.toggle()
                    }){
                        VStack {
                            Image(systemName: "camera.fill")
                            //Text("Camera")
                        }.padding( 30)
                    }
                }
                Spacer()
            }
            
            
            
            if (showCaptureImageView) {
                CaptureImageView(isShown: $showCaptureImageView, image: $image)
                    //.edgesIgnoringSafeArea(.top)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
