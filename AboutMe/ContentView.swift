//
//  ContentView.swift
//  AboutMe
//
//  Created by Scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var likes = "Interests"
    @State private var click = "Click Here"
    @State private var pers = "Personality"
    @State private var back = "Background"
    var body: some View {
        
        ZStack {
            Color(.systemYellow).ignoresSafeArea()
            VStack {
                Text("ABOUT")
                    .multilineTextAlignment(.center)
                Text("Kaitlyn Hu")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                VStack {
                    Image("IMG_2362")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                }.padding().background(Rectangle() .foregroundColor(.yellow)).cornerRadius(15).shadow(radius : 15).padding()
                Spacer().frame(height : 80)
                HStack {
                   
                    VStack {
                        Text(likes)
                            .font(.body).fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        Button(click) {
                            likes = "Swimming Reading Coding"
                        }.tint(.black)
                        
                    }
                    Spacer().frame(width:20)
                    
                    VStack {
                        Text(pers).font(.body).fontWeight(.semibold) .foregroundColor(Color.black)
                        Button(click) {
                            pers = "INFJ, Libra, Goes with the flow, Homebody"
                        }.tint(.black)
                        
                    }
                    Spacer().frame(width:18)
                    
                    VStack {
                        Text(back)
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                        Button(click) {
                            back = "16, Chinese American, Speaks Mandarin, Hinsdale Central '25"
                        }.tint(.black)
                    }
                }
                Spacer().frame(height:70)
                Button("Reset") {
                    likes = "Interests"
                    pers = "Personality"
                    back = "Background"
                }.tint(.blue)
                
                
                
            }.padding().background(Rectangle() .foregroundColor(.white)).cornerRadius(15).shadow(radius : 15).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
