//
//  AboutView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct AboutView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    
    let markdownLink = try! AttributedString(markdown: "[github/terrytamhoang](https://github.com/terrytamhoang)")
    var body: some View {
        VStack (alignment: .center, spacing: 0){
            //HEADER
            VStack (alignment: .center, spacing: 5){
                
                Image("matchaCup")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 140,height: 140, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                Text("MatchaMania")
                    .font(.system(.title, design: .serif))
                    .bold()
                    .foregroundStyle(Color("ColorGreenAdaptive"))
            }
            .padding()
            
            Form(){
                Section(header: Text("About")){
                    HStack{
                        Text("Product").foregroundStyle(.gray)
                        Spacer()
                        Text("Matcha Recipes")
                    }
                    HStack{
                        Text("Patch").foregroundStyle(.gray)
                        Spacer()
                        Text("1.0.1")
                    }
                    HStack{
                        Text("Compatibility").foregroundStyle(.gray)
                        Spacer()
                        Text("iOS 17.0.1")
                    }
                    HStack{
                        Text("Developer").foregroundStyle(.gray)
                        Spacer()
                        Text("Terry Hoang")
                    }
                    HStack{
                        Text("Course").foregroundStyle(.gray)
                        Spacer()
                        Text("Ubiquitous Computing")
                    }
                    HStack{
                        Text("GitHub").foregroundStyle(.gray)
                        Spacer()
                        Text(markdownLink)
                            .foregroundStyle(.blue)
                    }
                    HStack{
                        Text("Copyright ©2023 All rights reserved").foregroundStyle(.gray)
                            .font(.system(size: 12))
                        Spacer()

                    }
                    
                }
            }
            
            
            
            
        }
    }
}
#Preview {
    AboutView()
}
