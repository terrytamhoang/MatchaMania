//
//  ratingView.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

struct ratingView: View {
    
    var recipe: Recipe
    var body: some View {
        HStack (alignment: .center, spacing: 5 ){
            ForEach(1...(recipe.rating), id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    ratingView(recipe: recipeData[0])
}

