//
//  dishesView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/25/23.
//

import SwiftUI

struct dishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack (alignment: .leading, spacing: 4) {
                HStack{
                    Image("cookies")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Cookies")
                }
                Divider()
                HStack{
                    Image("cheesecake")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Cheesecake")
                }
                Divider()
                HStack{
                    Image("souffle")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Souffle Cake")
                }
                Divider()
                HStack{
                    Image("rollCake")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Swiss Roll")
                }
            }
            VStack (alignment:.center, spacing: 16 ){
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack (alignment: .trailing, spacing: 4){
                HStack{
                    Text("Latte")
                    Spacer()
                    Image("latte")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Smoothie")
                    Spacer()
                    Image("smoothie")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Icecream")
                    Spacer()
                    Image("iceCream")
                        .resizable()
                        .modifier(IconModifier())
                }
                Divider()
                HStack{
                    Text("Tiramisu")
                    Spacer()
                    Image("tiramisu")
                        .resizable()
                        .modifier(IconModifier())
                }
            }
            
        }.font(.system(.callout,design:.serif))
            .foregroundColor(.gray)
            .padding(.horizontal)
            .frame(maxHeight: 220)
    }
}

#Preview {
    dishesView()
}
