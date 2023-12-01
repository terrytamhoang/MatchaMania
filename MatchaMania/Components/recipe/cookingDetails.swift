//
//  cookingDetails.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

struct cookingDetails: View {
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 12){
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "clock")
                Text("Cooking Time: \(recipe.preparation)")
            }
            HStack(alignment: .center, spacing: 2){
                Image(systemName: "flame")
                Text("Difficulty: \(recipe.cooking)")
            }
        }.font(.footnote)
            .foregroundColor(.gray)
    }}

#Preview {
    cookingDetails(recipe: recipeData[0])
}
