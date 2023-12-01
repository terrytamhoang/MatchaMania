//
//  RecipeModel.swift
//  MatchaMania
//
//  Created by Terry Hoang on 10/26/23.
//

import SwiftUI

struct Recipe: Codable{
    var id: Int
    var title: String
    var headline: String
    var image: String
    var rating: Int
    var serves: Int
    var preparation: Int
    var cooking: Int
    var instructions: [String]
    var ingredients: [String]
}
