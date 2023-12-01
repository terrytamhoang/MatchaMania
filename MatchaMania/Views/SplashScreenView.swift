//
//  SplashScreenView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 11/28/23.
//

import SwiftUI



struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    var body: some View {
        if isActive{
            AppView()
        }else{
            VStack{
                VStack{
                    Image("matchaIcon")
                        .resizable()
                        .frame(width: 100,height: 100)
                    Text("MatchaMania")
                        .font(.system(.title, design: .serif))
                        .bold()
                        .foregroundStyle(Color("ColorGreenAdaptive").opacity(0.80))
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    withAnimation(.easeInOut){
                        self.isActive = true
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    SplashScreenView()
}
