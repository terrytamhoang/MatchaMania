//
//  RecipeCardView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    @State private var showModal: Bool = false
    var body: some View {
        VStack(alignment: .leading, spacing: 0){
            Image(recipe.image)
                .resizable()
                .scaledToFit()
            
            VStack(alignment: .leading, spacing: 12){
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                ratingView(recipe: recipe)
                cookingDetails(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"),radius: 8, x:0, y:0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            recipeDetailView(recipe: self.recipe)
        })
    }
}

#Preview {
    RecipeCardView(recipe: recipeData[0])
}

