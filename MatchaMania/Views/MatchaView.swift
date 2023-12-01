//
//  MatchaView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct MatchaView: View {
    
    @State private var pulsateAnimation: Bool = true

    var body: some View {
        VStack {
            Spacer()
            Image("matchaCup")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
            VStack {
                Text("Matcha".uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundStyle(Color.white)
                    .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x:0, y: 4)
                Text("""
                     Discover the world of matcha,
                     the exquisite green tea that has captivated generations. Rooted in the ancient wisdom of Japanese monks who harnessed its power for enhanced concentration, matcha has become a cherished tradition in Zen culture.
                     """)
                .lineLimit(nil)
                .font(.system(.headline,design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 340, minHeight: 120)
            }
            
            Spacer()
        }
        .background(Image("background")
            .resizable()
            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        ).edgesIgnoringSafeArea(.all)
            .onAppear(perform: {
                self.pulsateAnimation.toggle()
            })
    }
}

#Preview {
    MatchaView()
}
