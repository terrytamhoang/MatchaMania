//
//  HeaderView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct HeaderView: View {
    
    var header: Header
    
    @State private var showHeadline: Bool = false
    
    var slideInAnimation: Animation {
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    var body: some View {
        ZStack{
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            HStack (alignment: .top, spacing: 0){
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                VStack (alignment: .leading, spacing: 6){
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .shadow(radius: 3)
                    
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .shadow(radius: 3)
                    
                }.padding(.vertical, 0)
                    .padding(.horizontal,20)
                    .frame(width: 300, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            .offset(x: -66, y: showHeadline ? 75 : 220)
            .animation(slideInAnimation)
            .onAppear(perform: {
                self.showHeadline = true
            })
            .onDisappear(){
                self.showHeadline = false
            }
        }
        .frame(width: 480, height: 320, alignment: .center)
            }
}

#Preview {
    HeaderView(header: headersData[1])
        .previewLayout(.sizeThatFits)
}
