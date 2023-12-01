//
//  recipeDetailView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

struct recipeDetailView: View {
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .center, spacing: 0) {
                //IMAGE
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                Group{
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    ratingView(recipe: recipe)
                    cookingDetails(recipe: recipe)
                    
                    Text("Ingredients")
                        .bold()
                        .modifier(TitleModifer())
                    
                    VStack(alignment: .leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self){ item in
                            VStack(alignment: .leading, spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            }
                            
                        }
                    }
                    
                    Text("Instructions")
                        .bold()
                        .modifier(TitleModifer())
                    
                    ForEach(recipe.instructions, id: \.self){ item in
                        VStack(alignment: .center, spacing: 5){
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(Color("ColorGreenAdaptive"))
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                       
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action:{
                        self.presentationMode.wrappedValue.dismiss()
                    },label:{
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 :0.8,
                                         anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear(){
            self.pulsate.toggle()
        }
    }
}

#Preview {
    recipeDetailView(recipe: recipeData[0])
}
